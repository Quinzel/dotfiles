
if [ -x "$(command -v lsd)" ]; then
  alias ls='lsd'
fi

alias ll='ls -lh'
alias la='ls -a'
alias lla='ls -lah'
alias lt='ls --tree'

cdls() {
  builtin cd "$@" && la
}
  
alias cd='cdls'
