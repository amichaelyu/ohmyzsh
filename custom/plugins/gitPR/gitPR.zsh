#!/bin/zsh

# Get git root and verify we're in a repo
git_root=$(git rev-parse --show-toplevel 2>/dev/null) || {
  echo "Error: Not in a git repository"
  exit 1
}

# Get remote URL
git_url=$(git config --get remote.origin.url) || {
  echo "Error: Could not find remote URL"
  exit 1
}

# Prefer the current jj bookmark (nearest bookmark reachable from @);
# fall back to the current git branch when not in a jj repo.
current_branch=""
if jj root >/dev/null 2>&1; then
  # Nearest bookmark reachable from @, including remote-tracking bookmarks
  # (e.g. full_board_fixes@origin). b.name() strips the @remote suffix.
  current_branch=$(jj log --no-graph --color never \
    -r 'heads(::@ & (bookmarks() | remote_bookmarks()))' \
    -T 'bookmarks.map(|b| b.name()).join("\n")' 2>/dev/null | head -n1)
fi

if [[ -z "$current_branch" ]]; then
  current_branch=$(git branch --show-current)
fi

[[ -n "$current_branch" ]] || {
  echo "Error: Could not determine current bookmark or branch"
  exit 1
}

# Refuse to open a PR from main/master/trunk
if [[ "$current_branch" == "main" || "$current_branch" == "master" || "$current_branch" == "trunk" ]]; then
  echo "Error: You are on the $current_branch branch. Switch to a feature bookmark/branch to create a PR."
  exit 1
fi

# Check if it's a GitHub URL
[[ "$git_url" =~ github.com ]] || {
  echo "Error: Not a GitHub URL: $git_url"
  exit 1
}

# Extract repo path (works for both SSH and HTTPS)
repo_path=$(echo "$git_url" | sed -E 's|.*github\.com[:/]||; s|\.git$||')

# Build the PR URL.
# GitHub auto-detects the default base branch when no base is specified.
url="https://github.com/$repo_path/compare/$current_branch?expand=1"

case "$(uname -s)" in
  Darwin*)  open "$url" ;;
  Linux*)   xdg-open "$url" ;;
  CYGWIN*|MINGW*|MSYS*) start "$url" ;;
  *) echo "Error: Unsupported OS. Open manually: $url"; exit 1 ;;
esac
