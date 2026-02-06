#!/bin/bash

# This file is sourced by .bashrc on interactive

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto --group-directories-first'
    alias grep='grep --color=auto'
fi

# some more ls aliases
alias ll='ls -1'
alias l='ll -a'

alias scr='screen -R default'
alias scx='screen -x default'

# apt-get alias
alias agu='sudo apt-get update'
alias agd='sudo apt-get dist-upgrade'
alias agi='sudo apt-get install'

# Define colors
if [[ ! -t 1 ]]; then return; fi
if [[ ! -t 2 ]]; then return; fi

Black="\e[0;30m"
DarkGray="\e[1;30m"
DarkBlue="\e[0;34m"
Blue="\e[1;34m"
DarkGreen="\e[0;32m"
Green="\e[1;32m"
Cyan="\e[0;36m"
LightCyan="\e[1;36m"
DarkRed="\e[0;31m"
Red="\e[1;31m"
Purple="\e[0;35m"
Pink="\e[1;35m"
Brown="\e[0;33m"
Yellow="\e[1;33m"
Gray="\e[0;37m"
White="\e[1;37m"
NoColors="\e[00m"

function colors() {
        echo -e ${Black}Black${NoColors}
        echo -e ${DarkGray}DarkGray${NoColors}
        echo -e ${DarkBlue}DarkBlue${NoColors}
        echo -e ${Blue}Blue${NoColors}
        echo -e ${DarkGreen}DarkGreen${NoColors}
        echo -e ${Green}Green${NoColors}
        echo -e ${Cyan}Cyan${NoColors}
        echo -e ${LightCyan}LightCyan${NoColors}
        echo -e ${DarkRed}DarkRed${NoColors}
        echo -e ${Red}Red${NoColors}
        echo -e ${Purple}Purple${NoColors}
        echo -e ${Pink}Pink${NoColors}
        echo -e ${Brown}Brown${NoColors}
        echo -e ${Yellow}Yellow${NoColors}
        echo -e ${Gray}Gray${NoColors}
        echo -e ${White}White${NoColors}
        echo -e ${NoColors}NoColors${NoColors}
}

# EOF
