# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/jk/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep nomatch
bindkey -e
# End of lines configured by zsh-newuser-install

# prompt
PS1='[%(!,%F{red},%F{cyan})%~%f%(?,,:%F{red}%?%f)] '

# editor
EDITOR=vim

# alias
alias ls='ls -hF --color=auto'
alias ll='ls -l'

# path
if [[ $PATH != */home/$USERNAME/bin* ]]; then
    PATH="$PATH:/home/$USERNAME/bin"
fi

# key bindings
#bindkey "\e[1~" beginning-of-line
#bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "eOd" emacs-backward-word
bindkey "e\e[C" forward-word
bindkey "e\e[D" backward-word
# for Terminal
bindkey "\eOF" end-of-line
bindkey "\eOH" beginning-of-line

# remove '/' from WORDCHARS
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
export LS_COLORS="di=01;36"

# set TERM as vte sets it to xterm
[[ $COLORTERM = xfce4-terminal ]] && export TERM=xterm-256color

# set title
case $TERM in
    xterm*) precmd() { print -Pn "\e]0;%n [%~]\a" } ;;
esac

