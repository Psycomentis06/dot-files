# Sample .profile for SUSE Linux
# rewritten by Christian Steinruecken <cstein@suse.de>
#
# This file is read each time a login shell is started.
# All other interactive shells will only read .bashrc; this is particularly
# important for language settings, see below.

test -z "$PROFILEREAD" && . /etc/profile || true

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# Some people don't like fortune. If you uncomment the following lines,
# you will have a fortune each time you log in ;-)

#if [ -x /usr/bin/fortune ] ; then
#    echo
#    /usr/bin/fortune
#    echo
#fi


# Added by Toolbox App
export PATH="$PATH:/home/psycomentis06/.local/share/JetBrains/Toolbox/scripts"



# Sway autoload in TTY1
# export _JAVA_AWT_WM_NONREPARENTING=1 used for Intellij IDE display issue
setEnvVaribles ()
{
  export _JAVA_AWT_WM_NONREPARENTING=1
  set QT_QPA_PLATFORM=kde
  set XDG_CURRENT_DESKTOP=kde
}
[ "$(tty)" = "/dev/tty1" ] && setEnvVaribles  && exec sway

