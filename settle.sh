#! /usr/bin/bash

cd $(dirname $0)

mkdir -p ~/.config

echo -n "Building configs ... "

mkdir -p $PWD/builds/i3
cat "$PWD/i3/config-common" >> $PWD/builds/i3/config
cat "$PWD/i3/envs/config-$HOSTNAME" >> $PWD/builds/i3/config

mkdir -p $PWD/builds/i3blocks
cat "$PWD/i3blocks/config-common" >> $PWD/builds/i3blocks/config
cat "$PWD/i3blocks/envs/config-$HOSTNAME" >> $PWD/builds/i3blocks/config

echo "done."
echo -n  "Removing old symlinks ... "

while read line
do
    dst=$HOME/$(echo $line | cut -d , -f 2)
    rm -r $dst
done < list.txt

echo "done."
echo -n "Creating symlinks ... "

while read line
do
    src=$PWD/$(echo $line | cut -d , -f 1)
    dst=$HOME/$(echo $line | cut -d , -f 2)
    ln -s $src $dst
done < list.txt

echo "done."