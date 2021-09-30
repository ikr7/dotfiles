LANG=en_US.UTF-8
PATH=$HOME/bin:$PATH
PATH=$HOME/.cargo/bin:$PATH


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
alias gc="git commit"
alias gd="git diff"

alias ..="cd .."

alias venv="python -m venv"

take() {
	mkdir $1
	cd $1
}

#####################
# Syntax Hilighting #
#####################

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

_change-alacritty-color () {
	_values 'moooode' \
	'_comp' \
	'afterglow' \
	'argonaut' \
	'ayu_dark' \
	'base16_dark' \
	'blood_moon' \
	'breeze' \
	'campbell' \
	'challenger_deep' \
	'Cobalt2' \
	'cyber_punk_neon' \
	'darcula' \
	'dark_pastels' \
	'doom_one' \
	'dracula' \
	'falcon' \
	'flat_remix' \
	'gotham' \
	'gruvbox_dark' \
	'gruvbox_light' \
	'gruvbox_material' \
	'high_contrast' \
	'horizon-dark' \
	'hyper' \
	'iterm_default' \
	'konsole_linux' \
	'low_contrast' \
	'material_theme' \
	'material_theme_mod' \
	'nord' \
	'oceanic_next' \
	'omni' \
	'one_dark' \
	'palenight' \
	'papercolor_light' \
	'pencil_dark' \
	'pencil_light' \
	'remedy_dark' \
	'snazzy' \
	'solarized_dark' \
	'solarized_light' \
	'taerminal' \
	'tango_dark' \
	'tender' \
	'terminal_app' \
	'thelovelace' \
	'tokyo-night' \
	'tokyo-night-storm' \
	'tomorrow_night' \
	'tomorrow_night_bright' \
	'wombat' \
	'xterm' \
	'colors' \
}

compdef _change-alacritty-color change-alacritty-color
	
