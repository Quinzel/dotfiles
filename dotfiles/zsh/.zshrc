export ZSH="/home/przemek/.oh-my-zsh"
ZSH_THEME='powerlevel9k/powerlevel9k'
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
source ~/xhome/custom/zsh/powerlevel9k.zsh
source $ZSH/oh-my-zsh.sh



