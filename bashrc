
export HISTSIZE=
export HISTFILESIZE=
export EDITOR='vim'

complete -d cd rmdir

#set -x
#set -o noclobber

. /root/git/dotfile/aliases

#tput reset

code() {
	if [ -z "${#}" ] ; then /root/work/dotfile/functions code "$@"
	else echo $'\x1b[1mcode \x1b[7mUtilities\x1b[27m'
	fi }
net() {
	if [[ "${#}" -le 3 && "${#}" -ge 2 ]] ; then /root/work/dotfile/functions net "$@"
	else echo $'\x1b[1mnet \x1b[7m[Action] SSID {Password | Interface}\x1b[27m'
	fi }
mac() {
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions mac "$@"
	else echo $'\x1b[1mmac \x1b[7maddress\x1b[27m'
	fi
	}
tld() {
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions tld "$@"
	else echo $'\x1b[1mtld \x1b[7mTLD\x1b[27m'
	fi
	}
registrar() {
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions registrar "$@"
	else echo $'\x1b[1mregistrar \x1b[7mname\x1b[27m'
	fi
	}
registry() {
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions registry "$@"
	else echo $'\x1b[1mregistry \x1b[7mname\x1b[27m'
	fi
	}
cproxy() {
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions cproxy "$@"
	else echo $'\x1b[1mcproxy \x1b[7mCountry\x1b[27m'
	fi }
dict() {
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions dict "$@"
	else echo $'\x1b[1mdict \x1b[7mWord\x1b[27m'
	fi }
serve() {
	if [ "${#}" -eq 2 ] ; then /root/work/dotfile/functions serve "$@"
	else echo $'\x1b[1mserve \x1b[7mProtocol File\x1b[27m'
	fi }
lsync() {
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions lsync "$@"
	else echo $'\x1b[1mlsync \x1b[7mFile\x1b[27m'
	fi }
nohup() {
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions nohup "$@"
	else echo $'\x1b[1mnohup \x1b[7mProgram\x1b[27m'
	fi }
gedit() { 
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions gedit "$@"
	else echo $'\x1b[1mgedit \x1b[7mPath\x1b[27m'
	fi }
replace() { 
	if [ "${#}" -eq 4 ] ; then /root/work/dotfile/functions replace "$@"		
	else echo $'\x1B\x5B\x31\x6D\x72\x65\x70\x6C\x61\x63\x65\x20\x1B\x5B\x37\x6D\x57\x68\x65\x72\x65\x20\x57\x68\x61\x74\x20\x54\x6F\x57\x68\x61\x74\x20\x50\x61\x74\x68\x1B\x5B\x32\x37\x6D';
	fi }
weather() {
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions weather "$@"
	else echo $'\x1b[1mweather \x1b[7mPlace\x1b[27m'
	fi }
wiki() {
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions wiki "$@"
	else echo $'\x1b[1mwiki \x1b[7mSearch\x1b[27m'
	fi }
search() { 	
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions search "$@"
	else echo $'\x1B\x5B\x31\x6D\x73\x6C\x69\x73\x74\x20\x1B\x5B\x37\x6D\x55\x74\x69\x6C\x69\x74\x79\x1B\x5B\x32\x37\x6D'
	fi }
whatis() {
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions whatis "$@"
	else echo $'\x1b[1mwhat \x1b[7mUtility\x1b[27m'
	fi }	
#open() {
#	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions open "$@"	
#	else echo $'\x1b[1mopen \x1b[7mFile\x1b[27m'
#	fi }	
show() {
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions show "$@"		
	else echo $'\x1b[1mshow \x1b[7mUtility\x1b[27m'
	fi }	
glist() { 
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions glist "$@"
	else echo $'\x1b[1mglist \x1b[7mKeyword\x1b[27m'
	fi }
grange() { 
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions grange "$@"
	else echo $'\x1b[1mgrange \x1b[7mSchema\x1b[27m'
	fi }
lsd() {
	/root/git/dotfile/functions lsd
}	#pending
lh() {
	/root/git/dotfile/functions lh "$@"
}
hx() { 
	if [ "${#}" -eq 1 ] ; then /root/work/dotfile/functions hx "$@"
	else echo $'\x1b[1mhx \x1b[7mString\x1b[27m'
	fi }
#. /root/git/dotfile/ufunc
