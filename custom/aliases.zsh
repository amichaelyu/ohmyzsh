# alias .='~/.oh-my-zsh/custom/gitSwitcher.zsh'
alias myth='ssh yumich@myth.stanford.edu'

alias oh='cd ~/.oh-my-zsh/custom'
alias bunn='bun create next-app@latest'
alias buna='bun create astro'

alias crocs='CROC_SECRET=michaelyu croc send'

alias f='open .'
alias ignore='cp ~/.gitignore .'
alias d='cd ~/Developer'

alias dp='cd ~/Developer/PyCharm'
alias di='cd ~/Developer/IntelliJ'
alias dw='cd ~/Developer/WebStorm'
alias dc='cd ~/Developer/CLion'
alias dx='cd ~/Developer/Xcode'

alias bd='bun run dev'
alias bp='bun run prettier'
alias bb='bun run build'

alias pyc='pycharm'
alias int='idea'
alias web='webstorm'
alias cli='clion'
alias gol='goland'
alias rus='rustrover'
alias fle='fleet'

alias act='source .venv/bin/activate'
alias loc='open http://localhost:3000'
alias loc1='open http://localhost:3001'

alias lt="ls -lht"
alias lta="ls -lhtA"

ytd() {
	yt-dlp "$1" -f mp4
}

alias zipe='zip -er'

alias repo='~/.oh-my-zsh/custom/plugins/gitRepo/gitRepo.zsh'

alias pr='~/.oh-my-zsh/custom/plugins/gitPR/gitPR.zsh'

alias zeda='~/.oh-my-zsh/custom/plugins/zeda/zeda.zsh'

zp() {
	cd ~/Documents
	zip -er Passwords.zip Passwords
}

alias pre='pre-commit run --all-files'

alias py='python3'

alias rs='exec zsh'

alias cache='_ rm -rf ~/Library/Caches'

alias gi='git init'

alias gre='git reflog'

unalias gp
alias gp='git push -u'

alias gpa='git push -u --all'

alias gpaf='git push -u --all --force'

alias gla='git pull -p --all'

alias gpD='git push -d'

unalias gcb
gcb() {
	git checkout -b "$1"
#	git pull -p --set-upstream origin "$1"
}

alias gms='git merge --squash'

alias gmc='git merge --continue'

unalias grrm
alias grr='git remote remove'

alias gcoa='git checkout .'

alias gstm='git stash push -m'

alias gbrd='git branch --remote --delete'

alias jju='jj undo'

unalias jjbl
alias jjbl='jj bookmark list --all'

alias jjei='jje --ignore-immutable'

alias jjgi='jj git init'

alias jjap="jj bookmark move --from 'heads(::@- & bookmarks())' --to @-"

alias jjnm='jj new trunk()'

grc() {
	gaa
	git rm -r --cached .
	gaa
}

unalias gra
gra() {
	git remote add "$1" "$2"
#	~/.oh-my-zsh/custom/gitSwitcher.zsh
}

unalias gcam
gcam() {
	git add --all
	git commit -a -m "$1"
}

gcamp() {
	gcam "$1"
	gp
}

gitlab() {
	git config --global user.email 7798656-amichaelyu@users.noreply.gitlab.com
	git config --global user.signingkey D34A42058D418987
}

github() {
	git config --global user.email 64374317+amichaelyu@users.noreply.github.com
	git config --global user.signingkey 856472A96F9C0926
}
