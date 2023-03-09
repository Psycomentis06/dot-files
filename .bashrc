# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true

# Custom Paths
export LIQUIBASE_HOME=/usr/apps/liquibase-4.3.5
export REDIS_SERVER=/usr/sbin/redis-server
export NODE_HOME=/usr/apps/node-v14.17.0-linux-x64
export APPS_HOME=/usr/apps
export PATH=$PATH:$REDIS_SERVER:$LIQUIBASE_HOME:$NODE_HOME/bin:$APPS_HOME
export PATH=$PATH:/home/psycomentis06/.spicetify

# Custom aliases
alias phpstorm="phpstorm.sh"
alias spotify="flatpak run com.spotify.Client "
alias cservices="source ~/.config/old-autostart-scripts/manual-services"
alias du-all="sudo du --max-depth\=1 -h / | sort -h -r"
alias du-current="du --max-depth\=1 -h ~ | sort -h -r"


# My custom configuration
ENDCOLOR="\e[0;0m\]"
BG_PRIMARY_COLOR="\e[46m\]"
BG_SECONDARY_COLOR="\e[43m\]"
FGPC="\e[1;36m\]"
FGSC="\e[0;33m\]"
FGTC="\e[0;31m\]"
PS1="\\[$FGTC╭($ENDCOLOR$FGPC\u@\h$ENDCOLOR$FGTC) - [$ENDCOLOR$FGTC\d \t$ENDCOLOR$FGTC]$ENDCOLOR\n$FGTC├$ENDCOLOR{$FGSC\w$ENDCOLOR}\n$FGTC╰$ENDCOLOR\$\\]"
#PS1="\n\[\e[1;30m\][$$:$PPID-\j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \[\e[1;30m\][\[\e[1;34m\]\u@\H\[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY:-o}\[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\]\n\$\n"


