# dotfiles

Here's how I configure my Linux system(s)

## Hardware-specific configs

- `achikita` is for my desktop PC
- `mononobe` is for my laptop (ThinkPad T470s)
- `amemori` is for my 2nd desktop PC (DeskMini NUC, for lab)

## Install

```
$ git clone git@github.com:ikr7/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ ./settle.sh
```

## Update

Note: Delete all symlinks manually before updating.

```
$ cd ~/.dotfiles
$ git pull
$ ./settle.sh
```
