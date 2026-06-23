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

zeda() {
	echo "Setting up file associations for Zed..."

	# Python files -> Zed
	echo "🐍 Setting up Python associations..."
	duti -s dev.zed.Zed .py all
	duti -s dev.zed.Zed .pyw all
	duti -s dev.zed.Zed .pyi all
	duti -s dev.zed.Zed .pyx all
	duti -s dev.zed.Zed .pth all
	duti -s dev.zed.Zed requirements.txt all
	duti -s dev.zed.Zed setup.py all
	duti -s dev.zed.Zed pyproject.toml all
	duti -s dev.zed.Zed Pipfile all
	duti -s dev.zed.Zed Pipfile.lock all
	duti -s dev.zed.Zed poetry.lock all
	duti -s dev.zed.Zed .ipynb all
	duti -s dev.zed.Zed .pytest_cache all

	# Go files -> Zed
	echo "🐹 Setting up Go associations..."
	duti -s dev.zed.Zed .go all
	duti -s dev.zed.Zed go.mod all
	duti -s dev.zed.Zed go.sum all
	duti -s dev.zed.Zed go.work all

	# Java/JVM languages -> Zed
	echo "☕ Setting up JVM associations..."
	duti -s dev.zed.Zed .java all
	duti -s dev.zed.Zed .kt all
	duti -s dev.zed.Zed .kts all
	duti -s dev.zed.Zed .scala all
	duti -s dev.zed.Zed .sc all
	duti -s dev.zed.Zed .clj all
	duti -s dev.zed.Zed .cljs all
	duti -s dev.zed.Zed .cljc all
	duti -s dev.zed.Zed .groovy all
	duti -s dev.zed.Zed .gradle all
	duti -s dev.zed.Zed .gradle.kts all
	duti -s dev.zed.Zed build.gradle all
	duti -s dev.zed.Zed build.gradle.kts all
	duti -s dev.zed.Zed settings.gradle all
	duti -s dev.zed.Zed settings.gradle.kts all
	duti -s dev.zed.Zed .sbt all
	duti -s dev.zed.Zed pom.xml all
	duti -s dev.zed.Zed .properties all
	duti -s dev.zed.Zed .iml all

	# Web Development files -> Zed
	echo "🌐 Setting up Web associations..."
	duti -s dev.zed.Zed .js all
	duti -s dev.zed.Zed .mjs all
	duti -s dev.zed.Zed .jsx all
	duti -s dev.zed.Zed .ts all
	duti -s dev.zed.Zed .tsx all
	duti -s dev.zed.Zed .vue all
	duti -s dev.zed.Zed .svelte all
	duti -s dev.zed.Zed .astro all
	duti -s dev.zed.Zed .html all
	duti -s dev.zed.Zed .htm all
	duti -s dev.zed.Zed .css all
	duti -s dev.zed.Zed .scss all
	duti -s dev.zed.Zed .sass all
	duti -s dev.zed.Zed .less all
	duti -s dev.zed.Zed package.json all
	duti -s dev.zed.Zed package-lock.json all
	duti -s dev.zed.Zed yarn.lock all
	duti -s dev.zed.Zed pnpm-lock.yaml all
	duti -s dev.zed.Zed .eslintrc all
	duti -s dev.zed.Zed .eslintrc.js all
	duti -s dev.zed.Zed .eslintrc.json all
	duti -s dev.zed.Zed .prettierrc all
	duti -s dev.zed.Zed .prettierrc.js all
	duti -s dev.zed.Zed .prettierrc.json all
	duti -s dev.zed.Zed .babelrc all
	duti -s dev.zed.Zed babel.config.js all
	duti -s dev.zed.Zed tsconfig.json all
	duti -s dev.zed.Zed jsconfig.json all
	duti -s dev.zed.Zed webpack.config.js all
	duti -s dev.zed.Zed rollup.config.js all
	duti -s dev.zed.Zed vite.config.js all
	duti -s dev.zed.Zed vite.config.ts all
	duti -s dev.zed.Zed next.config.js all
	duti -s dev.zed.Zed nuxt.config.js all
	duti -s dev.zed.Zed .env all
	duti -s dev.zed.Zed .env.local all
	duti -s dev.zed.Zed .env.development all
	duti -s dev.zed.Zed .env.production all

	# C/C++ files -> Zed
	echo "🔧 Setting up C/C++ associations..."
	duti -s dev.zed.Zed .c all
	duti -s dev.zed.Zed .cc all
	duti -s dev.zed.Zed .cpp all
	duti -s dev.zed.Zed .cxx all
	duti -s dev.zed.Zed .c++ all
	duti -s dev.zed.Zed .h all
	duti -s dev.zed.Zed .hpp all
	duti -s dev.zed.Zed .hxx all
	duti -s dev.zed.Zed .h++ all
	duti -s dev.zed.Zed .hh all
	duti -s dev.zed.Zed .inl all
	duti -s dev.zed.Zed .inc all
	duti -s dev.zed.Zed CMakeLists.txt all
	duti -s dev.zed.Zed .cmake all
	duti -s dev.zed.Zed Makefile all
	duti -s dev.zed.Zed .make all
	duti -s dev.zed.Zed .mk all

	# PHP files -> Zed
	echo "🐘 Setting up PHP associations..."
	duti -s dev.zed.Zed .php all
	duti -s dev.zed.Zed .phtml all
	duti -s dev.zed.Zed .php3 all
	duti -s dev.zed.Zed .php4 all
	duti -s dev.zed.Zed .php5 all
	duti -s dev.zed.Zed .phps all
	duti -s dev.zed.Zed composer.json all
	duti -s dev.zed.Zed composer.lock all
	duti -s dev.zed.Zed .twig all
	duti -s dev.zed.Zed .blade.php all

	# Ruby files -> Zed
	echo "💎 Setting up Ruby associations..."
	duti -s dev.zed.Zed .rb all
	duti -s dev.zed.Zed .rbw all
	duti -s dev.zed.Zed .rake all
	duti -s dev.zed.Zed .gemspec all
	duti -s dev.zed.Zed Gemfile all
	duti -s dev.zed.Zed Gemfile.lock all
	duti -s dev.zed.Zed Rakefile all
	duti -s dev.zed.Zed .erb all
	duti -s dev.zed.Zed .haml all
	duti -s dev.zed.Zed .slim all

	# C#/.NET files -> Zed
	echo "🏍️  Setting up .NET associations..."
	duti -s dev.zed.Zed .cs all
	duti -s dev.zed.Zed .csx all
	duti -s dev.zed.Zed .vb all
	duti -s dev.zed.Zed .fs all
	duti -s dev.zed.Zed .fsx all
	duti -s dev.zed.Zed .fsi all
	duti -s dev.zed.Zed .csproj all
	duti -s dev.zed.Zed .vbproj all
	duti -s dev.zed.Zed .fsproj all
	duti -s dev.zed.Zed .sln all
	duti -s dev.zed.Zed .suo all
	duti -s dev.zed.Zed .user all
	duti -s dev.zed.Zed .xaml all
	duti -s dev.zed.Zed .config all
	duti -s dev.zed.Zed .resx all
	duti -s dev.zed.Zed .razor all

	# Rust files -> Zed
	echo "🦀 Setting up Rust associations..."
	duti -s dev.zed.Zed .rs all
	duti -s dev.zed.Zed Cargo.toml all
	duti -s dev.zed.Zed Cargo.lock all

	# Database files -> Zed
	echo "🗄️  Setting up Database associations..."
	duti -s dev.zed.Zed .sql all
	duti -s dev.zed.Zed .ddl all
	duti -s dev.zed.Zed .dml all
	duti -s dev.zed.Zed .psql all
	duti -s dev.zed.Zed .mysql all
	duti -s dev.zed.Zed .pgsql all
	duti -s dev.zed.Zed .sqlite all
	duti -s dev.zed.Zed .db all

	# Swift files -> Zed
	echo "🍎 Setting up Swift associations..."
	duti -s dev.zed.Zed .swift all
	duti -s dev.zed.Zed .m all
	duti -s dev.zed.Zed .mm all

	# General config and text files -> Zed
	echo "🚀 Setting up Zed for general files..."
	duti -s dev.zed.Zed .txt all
	duti -s dev.zed.Zed .md all
	duti -s dev.zed.Zed .markdown all
	duti -s dev.zed.Zed .json all
	duti -s dev.zed.Zed .json5 all
	duti -s dev.zed.Zed .jsonc all
	duti -s dev.zed.Zed .yaml all
	duti -s dev.zed.Zed .yml all
	duti -s dev.zed.Zed .toml all
	duti -s dev.zed.Zed .ini all
	duti -s dev.zed.Zed .cfg all
	duti -s dev.zed.Zed .conf all
	duti -s dev.zed.Zed .config all
	duti -s dev.zed.Zed .xml all
	duti -s dev.zed.Zed .csv all
	duti -s dev.zed.Zed .log all
	duti -s dev.zed.Zed .gitignore all
	duti -s dev.zed.Zed .gitattributes all
	duti -s dev.zed.Zed .gitconfig all
	duti -s dev.zed.Zed .editorconfig all
	duti -s dev.zed.Zed Dockerfile all
	duti -s dev.zed.Zed .dockerfile all
	duti -s dev.zed.Zed docker-compose.yml all
	duti -s dev.zed.Zed docker-compose.yaml all
	duti -s dev.zed.Zed .dockerignore all
	duti -s dev.zed.Zed README all
	duti -s dev.zed.Zed README.md all
	duti -s dev.zed.Zed LICENSE all
	duti -s dev.zed.Zed CHANGELOG all
	duti -s dev.zed.Zed .htaccess all

	# Shell scripts -> Zed
	duti -s dev.zed.Zed .sh all
	duti -s dev.zed.Zed .bash all
	duti -s dev.zed.Zed .zsh all
	duti -s dev.zed.Zed .fish all
	duti -s dev.zed.Zed .csh all
	duti -s dev.zed.Zed .tcsh all
	duti -s dev.zed.Zed .ksh all

	# Other languages -> Zed
	duti -s dev.zed.Zed .r all
	duti -s dev.zed.Zed .R all
	duti -s dev.zed.Zed .pl all
	duti -s dev.zed.Zed .pm all
	duti -s dev.zed.Zed .perl all
	duti -s dev.zed.Zed .lua all
	duti -s dev.zed.Zed .dart all
	duti -s dev.zed.Zed .elm all
	duti -s dev.zed.Zed .hx all
	duti -s dev.zed.Zed .hs all
	duti -s dev.zed.Zed .lhs all
	duti -s dev.zed.Zed .ex all
	duti -s dev.zed.Zed .exs all
	duti -s dev.zed.Zed .erl all
	duti -s dev.zed.Zed .hrl all
	duti -s dev.zed.Zed .ml all
	duti -s dev.zed.Zed .mli all

	# Generic UTI types -> Zed
	duti -s dev.zed.Zed public.unix-executable all
	duti -s dev.zed.Zed public.plain-text all

	echo ""
	echo "✅ Zed file associations configured!"
	echo ""
	echo "You may need to restart Finder or log out and back in for all changes to take effect."
}

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
