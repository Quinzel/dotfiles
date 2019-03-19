#!/bin/bash
install() {
	if [ -x "$(command -v apt-get)" ]; then
		if [ $UID = 0 ]; then
			apt install $1 -y
		else
			sudo apt install $1 -y
		fi
	fi
}

(git pull && git submodule update --init --recursive)

install vim

install zsh
ln -s custom/zsh/powerlevel9k dotfiles/zsh/.oh-my-zsh/custom/themes

install tmux
install ranger
install taskwarior
install i3
install xsel
install fonts-powerline

install rxvt-unicode
sudo update-alternatives --set x-terminal-emulator /usr/bin/urxvt

install stow
(cd dotfiles && stow -v -t ~ *)
