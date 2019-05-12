if [ ! -d ~/.config ]; then
	mkdir ~/.config
fi

ln -s $PWD/dunst ~/.config/dunst
ln -s $PWD/fontconfig ~/.config/fontconfig
ln -s $PWD/i3 ~/.config/i3
ln -s $PWD/i3blocks ~/.config/i3blocks
ln -s $PWD/nano ~/.config/nano
ln -s $PWD/zsh ~/.config/zsh

ln -s $PWD/scripts ~/.scripts
