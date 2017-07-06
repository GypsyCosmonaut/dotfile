#watch fuser fdisk dd power poweroff shutdown test fsck

# ======================================== Rules =========================================
# Use as ${tmp_}/0 as final output file
# Use "${}" "$""" "$num"
# Use single ticks with sed and awk (don't why it understands it)
# Use "${ Var }" 	when EXPANSION NEEDED			in SHELL
# Use "$Var"		when EXPANSION NOT NEEDED
# Use '$""'		when SUBSTITUTING STDIN			in AWK and SED
# Use single ticks when 
#			NO RUN TIME SUBSTITUTION EXIST in Quotess
#			Quotes DO NOT have other single ticks
# Use double ticks when 
#			RUN TIME SUBSTITUTION EXIST in Quotes
#			Quotes HAVE ANY single ticks
# Inside Double ticks		
#			LEAVE ACTIVE RUNTIME SUBSTITUTION 	${ charVar_ }
#			ESCAPE UNWANTED SUBSTITUTION		\${ charVar }, some ${ integerVar }	
#			ESCAPE unwanted Quote terminations	"\"\""
# ${ intVar } are
#			inherited input from USER INPUT
#			inherited input by sed and awk like ${0}
# ${ charVar_ } are 
#			ACTIVE runtime substitution variables
# ${ charVar } are 
#			inherited substitution from USER INPUT or ANOTHER FUNCTION or LOOP
#			PASSIVE substitution variables


#!/bin/bash

echo
echo earth 1> /etc/hostname
sed -i '2s/.*/127.0.1.1    earth/' /etc/hosts

#echo promt root (press <Enter> to skip)
#passwd root

#useradd --create-home groot
#sed -i '/groot/s/$/\/bin\/bash/' /etc/passwd
#echo promt groot
#passwd groot

#er=$(echo $?)

#mkdir /git/mine		2>/dev/null ; echo -n $?

ls /root/git/mine	2>/dev/null	|| mkdir /root/git/mine 
ls /tmp/files		2>/dev/null	|| mkdir /tmp/files 
ls /root/tmp		2>/dev/null	|| mkdir /root/tmp 

# ==============================RUNTIME SUBSTITUTIONS=======================
# function to list runtime substitutions here

tmp_=/tmp/files
rc_=/root/.bashrc
si_="sed -i"
se_="sed -e"
gq_="grep -q"
gs_="gsettings set"
og_="org.gnome"


#gs_="gsettings set"
#og_="org.gnome"
#g_path_=$(echo ${g_schema_} | sed "s|\.|/|g") 
#schema_path_=${g_schema_}:${g_path_}

${si_} 's/.*AutomaticLoginEnable .*/AutomaticLoginEnable = true/' /etc/gdm3/daemon.conf
${si_} 's/.*AutomaticLogin .*/AutomaticLogin = root/' /etc/gdm3/daemon.conf
${si_} 's/LEFT/RIGHT/' /etc/dconf/db/local.d/kali-tweaks
#${si_} 's/size=32/size=20/' /etc/dconf/db/local.d/kali-tweaks
#${si_} -i 's/shrink=true/shrink=false/' /etc/dconf/db/local.d/kali-tweaks
#${si_} -i 's/opacity=0/opacity=100/' /etc/dconf/db/local.d/kali-tweaks
#${si_} -i 's/.*opacity.*/background-opacity=0' /etc/dconf/db/local.d/kali-tweaks


# ==================================ALIASES=================================
# function to list all aliases here

${si_} '100i \\n'									${rc_}
${si_} '101,$d' 									${rc_}

${si_} 's/#alias grep=/alias grep=/' 							${rc_}
${si_} 's/alias ls=/#alias ls=/'							${rc_}
#echo 'nohup updatedb & '								>> ${rc_}
#clear nohup.out

#${gq_} ".* lsa=.*" 	${rc_} || echo 'alias lsa="ls -AlF --color=auto"'		>> ${rc_}
echo 'alias ls="l"'									>> ${rc_}
echo 'alias crontab="crontab -l"'							>> ${rc_}
echo 'alias pgrep="pgrep -f"'								>> ${rc_}
echo 'alias l="ls -CF --color=auto"'							>> ${rc_}
echo 'alias lv="ls -FlAshZid * --color=auto"'						>> ${rc_}
echo 'alias lh="ls -FlAshZid .* --color=auto"'						>> ${rc_}
echo 'alias la="ls -FlAshZi --color=auto"'						>> ${rc_}
echo 'alias c="tput reset"' 								>> ${rc_}
echo 'alias e="exit"'									>> ${rc_}
echo 'alias allout="kill -9 -1"'							>> ${rc_}
echo 'alias ct="cat -A"' 								>> ${rc_}
echo 'alias iip="ip addr | grep 255"' 							>> ${rc_}
echo 'alias eip="curl -s http://whatismyip.akamai.com/"'				>> ${rc_}
echo 'alias tailf="tail -f"' 								>> ${rc_}
echo "alias update=\"apt-get update && apt-get upgrade && apt-get dist-upgrade ; 				printf '\e[?5h' ; read -p '' ; printf '\e[?5l' ;\""		>> ${rc_}
echo 'alias install="apt-get install"' 							>> ${rc_}
echo 'alias remove="apt-get remove"' 							>> ${rc_}
echo 'alias show="apt-cache show"' 							>> ${rc_}
echo 'alias policy="apt-cache policy"' 							>> ${rc_}
echo 'alias search="apt-cache search"' 							>> ${rc_}
echo 'alias rmdir="rm -r"' 								>> ${rc_}
echo 'alias reload=". /root/git/dotfile.sh"'						>> ${rc_}

#printf '\e[?5h'  # Turn on reverse video
#printf '\e[?5l'  # Turn on normal video

# ==================================FUNCTIONS================================
# function to list all functions here

#${gq_} "^replace().*" 	${rc_} || echo 'replace() {} '

echo '
im() {
	case $@ in
		
		"coding") 
			cd /root/coding/ ;
		;;
		
		"normal")
			cd /root/ ;
		;;
		
		"su")
			cd / ;
		;;
		
		"downloading")
			cd /root/Downloads/ ;
		;;			
		
		"testing")
			cd /root/tmp/ ;
		;;
		
	esac
}'											>> ${rc_}

echo '
replace() { 
	sed -i "s:${1}:${2}:g" ^${3}$ ; 
}' 											>> ${rc_}

echo '
mani() { 
	man -k "^${1}$" ; 
}' 											>> ${rc_}

echo '
weather() { 
	curl wttr.in/"^${1}$" | 
	head -n -13 ; 
}' 											>> ${rc_}

echo '
network() { 
	iip ;
	eip ; 
	#MAC
	#apr scan, tcp scan 
	ping -c 2 google.com ; 
}' 											>> ${rc_}

echo '
system() {
	tty ;
	echo ${0} ; echo ;
	w ; echo ;
	uptime ; echo ;
	uname -a ; echo ;
	ls -lshZid /; echo ;
	la /dev/sd[a..b] ;
	la /dev/sd[a-b][0-9] ; echo ;
	fdisk -l ; echo ;
	#du -h / ;
	df -ahT ; echo ;
	printenv ; echo ;
	
	
}' 											>> ${rc_}

echo "
lsd() {
	ls -AlF | 
	sort -k 9,9 > ${tmp_}/1 ; 
	
	(
		file -Nz ${1} .${1} | 
		sort -k 1,1 | 
		${se_} '/^.:.*directory$/d' -e '/^..:.*directory$/d' | 
		awk '{ \$\"1\"=\"\"; print substr(\$\"0\",2) }' | 
		tac ; 
		echo ;
	) | 
	tac > ${tmp_}/2 ; 
	
	(
		echo; file -Nzi * .* | 
		sort -k 1,1 | 
		${se_} '1d' -e '2d' ;
	) > ${tmp_}/3 ; 

	paste ${tmp_}/1 ${tmp_}/2 ${tmp_}/3 > ${tmp_}/0 ;
	cat ${tmp_}/0 ;
}" 											>> ${rc_}

echo "
slist() { 
	apt-cache search \"\${1}\" | 
	while read -r pkg desc; 
	do 
		apt-cache policy \"\${pkg}\" | 
		awk -v pkg=\"\${pkg}\" -v desc=\"\${desc}\" 'NR==2 {print pkg, desc, \$\"0\"'; 
	done ; 
}" 											>> ${rc_}

echo '
what(){
	whatis "${1}" ;
	echo -e "\n \n" ;
	update-alternatives --display "${1}" 2>/dev/null ;
}' 											>> ${rc_}

echo '
cronjob() {
	printf "%148.145s\n " "********  Format  ********";
	printf "%148.100s\n " " delete <USER> <COMMAND>" ; 
	printf "%148.100s\n " " list <USER>" ;
	read -p "";
	case "${1}" in
		
		"delete") 
			sed -i \"/${3}/d\" /var/spool/cron/crontabs/${2}
			echo
			cat /var/spool/cron/crontabs/${2}
		;;
		
		"list")
			cat /var/spool/cron/crontabs/${2} ;
		;;
			
	esac
}' 											>> ${rc_}

echo '
glist() { 
	gsettings list-recursively | grep -i ${1} ; 
}' 											>> ${rc_}

echo '
grange() { 
	echo "*** schema = ${1} ***" ;
	echo "Type :: Key :: Value" ;
	echo "--------------------" ;
	for key in $(
		gsettings list-keys ${1} | 
		sort ;
	)
	do
		type="$(
				gsettings range ${1} ${key} | 
				tr "\n" " " ;
			)" ;
		value="$(
				gsettings get ${1} ${key} | 
				tr "\n" " " ;
			)" ;
		echo "${type} :: ${key} :: ${value}" ;
	done
}' 											>> ${rc_}


. ${rc_}


# ================================= CRON JOBS ======================================
# function to list all cron jobs here

#Persistent Enviroment Variables can be used in crontab

${si_} '16,$d'								/etc/crontab

echo "* *	* * *	root	rm ${tmp_}/*" 				>> /etc/crontab
echo "30 *	* * *	root	updatedb"				>> /etc/crontab

#echo "7		5	/root/files/mega	/root/files/anacron"	>> /etc/anacrontab



# ================================= SUDOERS ========================================

echo "groot	ALL=(ALL:ALL) ALL" 		>> /etc/sudoers



# ================================ GSETTINGS =======================================
# function to list all gsettings here


gconvert() {
	g_path_=$(echo ${g_schema_} | sed 'y|.|/|; s|$|/|; s|^|/|; s|\(.*\)|\L\1|')
	schema_path_=${g_schema_}:${g_path_}
}

g_schema_=${og_}.Terminal.Legacy.Keybindings
gconvert ;

${gs_} ${schema_path_} new-window '<Control>n'
${gs_} ${schema_path_} new-tab '<Control>t'
${gs_} ${schema_path_} close-tab '<Ctrl>w'
${gs_} ${schema_path_} next-tab '<Primary>Right'
${gs_} ${schema_path_} prev-tab '<Primary>Left'
${gs_} ${schema_path_} full-screen '<Ctrl>f'

${gs_} ${og_}.Terminal.Legacy.Settings theme-variant 'dark'
${gs_} ${og_}.desktop.lockdown disable-lock-screen true
${gs_} ${og_}.shell.extensions.workspaces-to-dock dock-position "'TOP'"
${gs_} ${og_}.shell.extensions.workspaces-to-dock opaque-background false
${gs_} ${og_}.shell.extensions.workspaces-to-dock require-click-to-show false
${gs_} ${og_}.shell.extensions.workspaces-to-dock thumbnail-size 0.10
${gs_} ${og_}.shell.extensions.workspaces-to-dock thumbnail-visible-width 10.0
${gs_} ${og_}.shell.extensions.workspaces-to-dock workspace-caption-height 15.0
${gs_} ${og_}.shell.extensions.workspaces-to-dock workspace-caption-taskbar-icon-size 15.0
${gs_} ${og_}.shell.extensions.workspaces-to-dock workspace-caption-windowcount-image true
${gs_} ${og_}.shell.extensions.workspaces-to-dock animation-time 0.0
${gs_} ${og_}.shell.extensions.workspaces-to-dock show-delay 0.0
${gs_} ${og_}.shell.extensions.workspaces-to-dock hide-delay 0.0
${gs_} ${og_}.shell.app-switcher current-workspace-only true
${gs_} ${og_}.desktop.wm.keybindings switch-to-workspace-left "['<Control><Shift>Left']"
${gs_} ${og_}.desktop.wm.keybindings switch-to-workspace-right "['<Control><Shift>Right']"
${gs_} ${og_}.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
${gs_} ${og_}.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab']"
${gs_} ${og_}.desktop.wm.keybindings switch-applications "['<Super>Tab']"
${gs_} ${og_}.desktop.wm.keybindings switch-applications-backward "['<Super><Shift>Tab']"
${gs_} ${og_}.Terminal.Legacy.Settings default-show-menubar false
${gs_} ${og_}.desktop.datetime automatic-timezone true
${gs_} ${og_}.desktop.interface clock-show-date true
${gs_} ${og_}.desktop.interface clock-show-seconds true
${gs_} ${og_}.desktop.interface show-battery-percentage true
${gs_} ${og_}.gedit.preferences.editor display-line-numbers true
${gs_} ${og_}.gedit.preferences.editor auto-indent true
${gs_} ${og_}.gedit.preferences.editor display-overview-map true
${gs_} ${og_}.gedit.preferences.editor highlight-current-line true
${gs_} ${og_}.gedit.preferences.editor auto-save true
${gs_} ${og_}.gedit.preferences.editor bracket-matching true
${gs_} ${og_}.gedit.preferences.editor scheme 'cobalt'
${gs_} ${og_}.desktop.wm.preferences audible-bell false
${gs_} ${og_}.desktop.wm.preferences visual-bell true

#${gs_} ${og_}.gedit.preferences.editor create-backup-copy true

#update 

# ================================== UTILITIES ====================================

# function to list all utilities here

#install \
#tree ccrypt speedtest-cli xdotool wmctrl lshw\ 
#metagoofil \
#vega \
#i3 \
#squid3 \
#websploit \
#routersploit \
#mitmf \
#snort \
#privoxy \
#owasp-mantra-ff \
#mutt \
#iperf \
#kali-linux-web kali-linux-forensic kali-linux-full kali-linux-pwtools \
#libimage-exiftool-perl \
#empathy \
#tor gnupg2 \
#texlive-full \
# strace \
#f2fs torchat fsck syncthing ssh 
#;

echo "To resource dotfile again, type 'reload'" ;
echo -n "Do you want to restart (y/n)? " ;
read answer ;
if echo "$answer" | 
	grep -iq "^y" ;
then
	shutdown -r +0 ;
else
	wid_=$(xprop -root | 
		grep "_NET_ACTIVE_WINDOW(WINDOW)"| 
		awk '{print $5}' ;
		)
	xdotool windowfocus $wid_ ;
	xdotool key ctrl+t ;
	wmctrl -i -a $wid_ && 
	exit ;
fi
#curl -i -X GET http://rest-api.io/items
#curl -i -X GET http://rest-api.io/items/5069b47aa892630aae059584
#curl -i -X DELETE http://rest-api.io/items/5069b47aa892630aae059584
#curl -i -X POST -H 'Content-Type: application/json' -d '{"name": "New item", "year": "2009"}' http://#rest-api.io/items
#curl -i -X PUT -H 'Content-Type: application/json' -d '{"name": "Updated item", "year": "2010"}' #http://rest-api.io/items/5069b47aa892630aae059584


#git config --global user.name GypsyCosmonaut
#git config --global user.email rahulbansal1913@gmail.com
##git config --global branch.autosetuprebase always
#git config --global color.ui true
#git config --global color.status auto
#git config --global color.branch auto
#git config --global core.editor gedit
##git config --global merge.tool vimdiff
#git init /root/git/






# ======================================= EOF ====================================

