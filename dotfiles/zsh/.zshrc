export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME='spaceship'
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy/mm/dd"
#ZSH_TMUX_AUTOSTART=true
plugins=(
	chucknorris
	command-not-found
	common-aliases
	copyfile
	docker
	extract
	fasd
	git
	git-flow
	history
	python
	taskwarrior
	tmux
	#tmuxinator
	vi-mode
	web-search
	)
source $ZSH/oh-my-zsh.sh



