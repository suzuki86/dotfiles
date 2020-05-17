# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/default/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Enable to show current branch in prompt.
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%b)'
precmd () { vcs_info }

setopt prompt_subst
PROMPT="%F{green}%D{%Y-%m-%d %H:%m:%S} %n@%m:%~ "'${vcs_info_msg_0_}'$'\n'">%f "

# Enable to use fzf.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

