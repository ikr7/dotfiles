
PATH=$HOME/bin:$PATH

HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

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

alias ls="exa --long --group --header --binary --time-style=long-iso"
alias ll="exa --long --group --header --binary --time-style=long-iso"
alias la="exa --long --group --header --binary --time-style=long-iso --all"

alias g="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit"

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

############################
# "Command not found" hook #
############################

source /usr/share/doc/pkgfile/command-not-found.zsh

_insync-headless () {
	_values 'mode' \
	'accept_all_new_shares' \
	'accept_share' \
	'add_account' \
	'force_sync' \
	'get_account_information' \
	'get_actions_required' \
	'get_domain_link' \
	'get_errors' \
	'get_file_status' \
	'get_link' \
	'get_new_shares' \
	'get_proxy' \
	'get_recent_changes' \
	'get_root_drive_files' \
	'get_status' \
	'get_sync_progress' \
	'hide' \
	'manage_ignore_list' \
	'manage_selective_sync' \
	'move_folder' \
	'open_in_gdrive' \
	'pause_syncing' \
	'quit' \
	'reject_all_new_shares' \
	'reject_share' \
	'remove_account' \
	'remove_from_insync' \
	'resume_syncing' \
	'retry_errors' \
	'set_autostart' \
	'set_export_option' \
	'set_proxy' \
	'set_selective_sync' \
	'share' \
	'show' \
	'start' \
	'toggle' \
}

compdef _insync-headless insync-headless
