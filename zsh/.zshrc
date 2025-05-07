LANG=en_US.UTF-8

PATH=$HOME/bin:$PATH
PATH=$HOME/.local/bin:$PATH
PATH=node_modules/.bin:$PATH

HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

export GIT_EDITOR=nano

# ignore duplicates in history
setopt hist_ignore_dups

# right prompt only on last line
setopt transient_rprompt

# completion after `=`
setopt magic_equal_subst

# typo correction
setopt correct

# complete hidden files
setopt globdots

setopt hist_ignore_space

autoload -U colors && colors
autoload -U compinit && compinit
autoload -U promptinit && promptinit

prompt adam1

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select

#####################
# Exa instead of ls #
#####################

alias ls="exa --long --group --header --binary --time-style=long-iso --git"
alias ll="exa --long --group --header --binary --time-style=long-iso --git"
alias la="exa --long --group --header --binary --time-style=long-iso --all --git"

alias g="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gd="git diff --ignore-all-space"
alias gw="git switch"
alias gg="git grep"

alias ..="cd .."

alias venv="python -m venv"

alias dc="docker-compose"

take() {
	mkdir $1
	cd $1
}

ro() {
	test "$PWD" = "$HOME/Workspace" || test "$PWD" = "$HOME" && return
	test -d .git && return
	cd ..
	ro
}

retry () {
	while ! "${@:2}"; do
		sleep $1
	done
}

#####################
# Syntax Hilighting #
#####################

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

_alacritty-colorscheme () {
	local -a cmds
	if (( CURRENT == 2 )); then
		cmds=('list' 'update' 'upgrade' 'commit')
		_describe -t commands "subcommand" cmds
	else
		_values $(alacritty-colorscheme list)
	fi
}

compdef _alacritty-colorscheme alacritty-colorscheme
	
_notify-send() {
	_arguments \
		{-?,--help} \
		{-u,--urgency}'::_values a v c' \
		'*::'
}

compdef _notify-send notify-send
