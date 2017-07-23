#!/bin/bash

export HISTSIZE=
export HISTFILESIZE=

#echo "set -o noclobber"

alias f="xdotool key ctrl+f"
alias ls="l"
alias pgrep="pgrep -f"
alias l="ls -F --color=auto"
alias lv="ls -FlAshZid --color=auto"
alias la="ls -FlAshZi --color=auto"
alias c="tput reset"
alias e="exit"
alias allout="kill -9 -1"
alias ct="cat -A"
alias iip="ip addr | grep 255"
alias eip="curl -s http://whatismyip.akamai.com/"
alias tailf="tail -f"
alias update="apt-get update -y && apt-get upgrade -y ;"
#alias upgrade="apt-get update && apt-get upgrade && apt-get dist-upgrade ; printf '\e[?5h' ; read -p '' ; printf '\e?5l' ;"
alias upgrade="apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade -y ; xwd -root >|/tmp/files/a.xwd ; convert -negate /tmp/files/a.xwd /tmp/files/b.xwd ; timeout 1 xwud -in /tmp/files/b.xwd ;"
alias install="apt-get install"
alias remove="apt-get remove"
alias policy="apt-cache policy"
alias lcron="echo ${USER} && echo && cat /var/spool/cron/crontabs/${USER}"
#alias rmdir="rm -r"
alias reload=". /root/git/dotfile/main"
#alias rm="mv -t /dev/null"
alias hex="/root/git/dotfile/functions hex"
alias lproxy="/root/git/dotfile/functions lproxy"
alias network="/root/git/dotfile/functions network"
alias system="/root/git/dotfile/functions system"
alias gitup="/root/git/dotfile/functions gitup"

cproxy() {
		/root/git/dotfile/functions cproxy "$@"
}
	
gedit() { 
		/root/git/dotfile/functions gedit "$@"
}

lh() {
		/root/git/dotfile/functions lh "$@"
}

replace() { 
		if [ $# -eq 0 ] ; 
		then
			echo $'\x0a\x1B\x5B\x31\x6D\x72\x65\x70\x6C\x61\x63\x65\x3A\x20\x1B\x5B\x37\x6D\x57\x68\x65\x72\x65\x20\x57\x68\x61\x74\x20\x54\x6F\x57\x68\x61\x74\x20\x50\x61\x74\x68\x1B\x5B\x32\x37\x6D\x0A';
		else
			/root/git/dotfile/functions replace "$@"
		fi
}

lman() { 
		if [ $# -ne 0 ] ; 
		then
			/root/git/dotfile/functions lman "$@"
		else
			echo $'\x1b[1mlman \x1b[7mUtility\x1b[27m'
		fi
}

weather() {
		if [ $# -ne 0 ] ; 
		then
			/root/git/dotfile/functions weather "$@"
		else
			echo $'\x1b[1mweather \x1b[7mPlace\x1b[27m'
		fi
}

lsd() {
		/root/git/dotfile/functions lsd
}	#pending
	
search() { 	
		if [ $# -ne 0 ] ; 
		then
			/root/git/dotfile/functions search "$@"
		else
			echo $'\x1B\x5B\x31\x6D\x73\x6C\x69\x73\x74\x20\x1B\x5B\x37\x6D\x55\x74\x69\x6C\x69\x74\x79\x1B\x5B\x32\x37\x6D'
		fi
}

whatis() {
		if [ $# -ne 0 ] ; 
		then
			/root/git/dotfile/functions whatis "$@"
		else
			echo $'\x1b[1mwhat \x1b[7mUtility\x1b[27m'
		fi
}
	
open() {
		if [ $# -ne 0 ] ; 
		then
			/root/git/dotfile/functions open "$@"	
		else
			echo $'\x1b[1mopen \x1b[7mfile\x1b[27m'
		fi
}
	
show() {
		if [ $# -ne 0 ] ; 
		then
			/root/git/dotfile/functions show "$@"		
		else
			echo $'\x1b[1mshow \x1b[7mUtility\x1b[27m'
		fi
}
	
glist() { 
		if [ $# -ne 0 ] ; 
		then
			/root/git/dotfile/functions glist "$@"
		else
			echo $'\x1b[1mglist \x1b[7mKeyword\x1b[27m'
		fi
}

grange() { 
		if [ $# -ne 0 ] ; 
		then
			/root/git/dotfile/functions grange "$@"
		else
			echo $'\x1b[1mgrange \x1b[7mSchema\x1b[27m'
		fi
}

