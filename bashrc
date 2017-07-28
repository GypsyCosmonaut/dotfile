
export HISTSIZE=
export HISTFILESIZE=

complete -d cd rmdir

#echo "set -o noclobber"

. /root/git/dotfile/aliases
alias y="echo bansal"
cproxy() {
	if [ "${#}" -ne 0 ] ; then /root/git/dotfile/functions cproxy "$@"
	else echo $'\x1b[1mcproxy \x1b[7mCountry\x1b[27m'
	fi }
dict() {
	if [ "${#}" -ne 0 ] ; then /root/git/dotfile/functions dict "$@"
	else echo $'\x1b[1mdict \x1b[7mWord\x1b[27m'
	fi }
gedit() { 
	if [ "${#}" -ne 0 ] ; then /root/git/dotfile/functions gedit "$@"
	else echo $'\x1b[1mgedit \x1b[7mPath\x1b[27m'
	fi }
lh() {
	if [ "${#}" -ne 0 ] ; then /root/git/dotfile/functions lh "$@"
	else echo $'\x1b[1mlh \x1b[7mPath\x1b[27m'
	fi }
replace() { 
	if [ "${#}" -ne 0 ] ; then /root/git/dotfile/functions replace "$@"		
	else echo $'\x0a\x1B\x5B\x31\x6D\x72\x65\x70\x6C\x61\x63\x65\x3A\x20\x1B\x5B\x37\x6D\x57\x68\x65\x72\x65\x20\x57\x68\x61\x74\x20\x54\x6F\x57\x68\x61\x74\x20\x50\x61\x74\x68\x1B\x5B\x32\x37\x6D\x0A';
	fi }

lman() { 
	if [ "${#}" -ne 0 ] ; then /root/git/dotfile/functions lman "$@"
	else echo $'\x1b[1mlman \x1b[7mUtility\x1b[27m'
	fi }
weather() {
	if [ "${#}" -ne 0 ] ; then /root/git/dotfile/functions weather "$@"
	else echo $'\x1b[1mweather \x1b[7mPlace\x1b[27m'
	fi }
search() { 	
	if [ "${#}" -ne 0 ] ; then /root/git/dotfile/functions search "$@"
	else echo $'\x1B\x5B\x31\x6D\x73\x6C\x69\x73\x74\x20\x1B\x5B\x37\x6D\x55\x74\x69\x6C\x69\x74\x79\x1B\x5B\x32\x37\x6D'
	fi }
whatis() {
	if [ "${#}" -ne 0 ] ; then /root/git/dotfile/functions whatis "$@"
	else echo $'\x1b[1mwhat \x1b[7mUtility\x1b[27m'
	fi }	
open() {
	if [ "${#}" -ne 0 ] ; then /root/git/dotfile/functions open "$@"	
	else echo $'\x1b[1mopen \x1b[7mfile\x1b[27m'
	fi }	
show() {
	if [ "${#}" -ne 0 ] ; then /root/git/dotfile/functions show "$@"		
	else echo $'\x1b[1mshow \x1b[7mUtility\x1b[27m'
	fi }	
glist() { 
	if [ "${#}" -ne 0 ] ; then /root/git/dotfile/functions glist "$@"
	else echo $'\x1b[1mglist \x1b[7mKeyword\x1b[27m'
	fi }
grange() { 
	if [ "${#}" -ne 0 ] ; then /root/git/dotfile/functions grange "$@"
	else echo $'\x1b[1mgrange \x1b[7mSchema\x1b[27m'
	fi }
lsd() {
	/root/git/dotfile/functions lsd
}	#pending
#. /root/git/dotfile/ufunc
