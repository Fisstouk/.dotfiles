# Lines configured by zsh-newuser-install
#########
# History
#########

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lyronn/.zshrc'

########
# Alias
########

alias cp="cp -vi"
alias grep="grep --color"
alias ls="ls --color -F"
alias ll="ls --color -rtl"
alias mkdir="mkdir -vp"
alias rm="rm -Iv --preserve-root"

#####
# Git
#####

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info}
precmd_functions+=( precmd_vcs_info )
zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)'
setopt prompt_subst

########
# Prompt
########

if [[ ${UID} = 0 ]]; then
	prompt_username='%F{red}%n%f'
else
	prompt_username='%F{green}%n%f'
fi

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U colors && colors
PROMPT='${prompt_username}@%m %~ %T ${vcs_info_msg_0_} 
%# '
RPROMPT=' [%F{yellow}%?%f] '

# Allow comments in interactive shells like Bash
setopt INTERACTIVE_COMMENTS
