#!/bin/sh

REPODIR=$(dirname $0)
ABSPATH=$(readlink -f $REPODIR)

install() {
	REPOLOCATION="$ABSPATH/$1"
	INSTALLLOCATION="$HOME/$2"
	if [ -h "$INSTALLLOCATION" ]; then
		echo "$INSTALLLOCATION already installed"
	else
		echo "Installing $REPOLOCATION to $INSTALLLOCATION"
		if [ -e "$INSTALLLOCATION" ]; then
			echo "config exists; backing up"
			mv "$INSTALLLOCATION" "$INSTALLLOCATION.bak"
		fi
		ln -s "$REPOLOCATION" "$INSTALLLOCATION"
	fi
}

install "tmux.conf" ".tmux.conf"
install "config/alacritty.toml" ".config/alacritty.toml"
install "config/nvim" ".config/nvim"
install "config/kitty" ".config/kitty"
install "hammerspoon" ".hammerspoon"
install "zprofile_common" ".zprofile_common"
