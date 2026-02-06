# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# .bash_hostory
# Don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth
# Append to the history file, don't overwrite it
shopt -s histappend
# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Colored prompt
force_color_prompt=yes

if [[ -n "$force_color_prompt" ]]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=no
    fi
fi

if [[ ${color_prompt} = yes ]]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]zero\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
else
    PS1='${debian_chroot:+($debian_chroot)}zero:\w\$ '
fi
unset color_prompt force_color_prompt

# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Export some variables
export PATH=~/bin:${PATH}

# Bash completion
if [[ -r /usr/share/bash-completion/bash_completion ]]; then
  . /usr/share/bash-completion/bash_completion
fi


# Welcome message
echo -e "${White}Welcome to${NoColors} ${Red}zero${NoColors}${White}!${NoColors} ($(uname --machine --operating-system))"
echo -e "${White}Battery:${NoColors} ${Yellow}$(battery)%${NoColor}"
echo -e "${White}IP:${NoColors} ${Yellow}$(ip a | grep 'inet\s' | cut -d ' ' -f 6 | cut -d '/' -f 1 | grep -v '^127' | tr '\n' ' ')${NoColor}"
echo

# EOF
