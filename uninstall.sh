#!/bin/sh

restore() {
	INSTALLLOCATION="$HOME/$1"
	if [ -h "$INSTALLLOCATION" ]; then
		rm "$INSTALLLOCATION"
		if [ -e "$INSTALLLOCATION.bak" ]; then
			echo "restoring old config"
			mv "$INSTALLLOCATION.bak" "$INSTALLLOCATION"
		fi
	fi
}

restore ".tmux.conf"
restore ".config/alacritty.toml"
restore ".config/nvim"
restore ".config/kitty"
restore ".zprofile_common"
