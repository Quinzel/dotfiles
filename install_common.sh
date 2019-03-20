#!/bin/bash
install() {
	if [ -x "$(command -v pacman)" ]; then
		if [ $UID = 0 ]; then
			pacman -S $1
		else
			sudo pacman -S $1
		fi
	elif [ -x "$(command -v apt-get)" ]; then
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
ln -s ~/xhome/custom/zsh/spaceship-prompt/spaceship.zsh-theme  ~/xhome/dotfiles/zsh/.oh-my-zsh/custom/themes/spaceship.zsh-theme

install tmux
install ranger
install taskwarior
install i3
install xsel
install fonts-powerline
install fonts-font-awesome
install fortune

wget https://github.com/Peltoche/lsd/releases/download/0.14.0/lsd_0.14.0_amd64.deb
if [ $UID = 0 ]; then
  dpkg -i lsd_0.14.0_amd64.deb
else
  sudo dpkg -i lsd_0.14.0_amd64.deb
fi 

install rxvt-unicode
sudo update-alternatives --set x-terminal-emulator /usr/bin/urxvt
echo
install stow
(cd dotfiles && stow -v -t ~ *)
