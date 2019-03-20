export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME='spaceship'
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy/mm/dd"
#ZSH_TMUX_AUTOSTART=true

eval "$(fasd --init auto)"

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


source $HOME/xhome/custom/zsh/aliases.zsh


# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/ppodczasi/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/ppodczasi/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ppodczasi/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/ppodczasi/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
