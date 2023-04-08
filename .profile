# $OpenBSD: dot.profile,v 1.8 2022/08/10 07:40:37 tb Exp $
#
# sh/ksh initialization

ENV="$HOME/.profile"; export ENV


red="\033[1;31m%"
green="\033[0;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
magenta="\033[1;35m"
cyan="\033[1;36m"
white="\033[0;37m"
end="\033[0m"

PATH=$HOME/.local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin
HOSTNAME=`hostname -s`

function prompt
{
	print -n "$yellow[$green$USER$white@$blue$HOSTNAME "
	if [ $PWD = $HOME ];
	then
		print -n "$white~"
	else
		print -n $white`basename $PWD`
	fi
	print -n "$yellow] $end$ "
}

PS1='`prompt`'

alias ls='colorls -lG'
LSCOLORS=fxexcxdxbxegedabagacad


export PATH HOME TERM LSCOLORS
