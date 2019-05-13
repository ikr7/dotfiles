#! /usr/bin/bash

mkdir -p ~/.config

ln -s $PWD/dunst ~/.config/dunst
ln -s $PWD/fontconfig ~/.config/fontconfig

mkdir -p $PWD/builds/i3
cat "$PWD/i3/config-common" > $PWD/builds/i3/config
cat "$PWD/i3/envs/config-$HOSTNAME" >> $PWD/builds/i3/config
ln -s "$PWD/builds/i3" ~/.config/i3

ln -s $PWD/i3blocks ~/.config/i3blocks
ln -s $PWD/nano ~/.config/nano
ln -s $PWD/zsh ~/.config/zsh

ln -s $PWD/zsh/zshenv-home ~/.zshenv

ln -s $PWD/scripts ~/.scripts

ln -s $PWD/desktop-entries/reboot.desktop ~/.local/share/applications/reboot.desktop
ln -s $PWD/desktop-entries/screenshot.desktop ~/.local/share/applications/screenshot.desktop
ln -s $PWD/desktop-entries/shutdown.desktop ~/.local/share/applications/shutdown.desktop
ln -s $PWD/desktop-entries/suspend.desktop ~/.local/share/applications/suspend.desktop
