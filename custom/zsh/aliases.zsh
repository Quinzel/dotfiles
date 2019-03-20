
if [ -x "$(command -v lsd)" ]; then
  alias ls='lsd'
fi

cd_ls() {
  cd $1; 
  ls -a
}

alias cd='cd_ls'
alias ll='ls -lh'
alias la='ls -ah'
alias lla='ls -lah'
alias lt='ls --tree'
