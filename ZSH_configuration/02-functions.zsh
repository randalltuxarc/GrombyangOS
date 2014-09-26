#==============================================================
#        __       __       __       __       __
#       / /\     / /\     /_/\     / /\     / /\
#      / / |_   / / /\   _\ \ \   / /  \   / / /
#     /_/  |/\ /_/ /  \ /_/\/  \ /_/ / /_ /_/ / /\
#  __ \_\/|  / \ \  / / \ \  /\/ \ \  __/ \ \ \/ /
# /_/\  |_| /   \ \/ /   \ \ \    \ \ \    \ \  /
# \_\/  \_\/     \_\/     \_\/     \_\/     \_\/
#
# F U N C T I O N   F I L E   F O R   Z S H

#=-=-=-=-=-=-
# Oneliners
#=-=-=-=-=-=-

goto() { [ -d "$1" ] && cd "$1" || cd "$(dirname "$1")"; }
cpf() { cp "$@" && goto "$_"; }
mvf() { mv "$@" && goto "$_"; }
mkf() { mkdir -p $1; cd $1 }
cdl() { cd $@; ls++ }
dtac() { ($1 &) }
zsh_stats() { history | awk '{print $2}' | sort | uniq -c | sort -rn | head }
horny() { mirage -sR /home/kitty/Pictures/wp/J-V; }
right() { l="$(/bin/cat -)"; s=$(echo -e "$l"| wc -L); echo "$l" | while read l;do j=$(((s-${#l})));echo "$(while ((j-->0)); do printf " ";done;)$l";done;};

#=-=-=-=-=-=-=-=-=-=-
# google translate
#=-=-=-=-=-=-=-=-=-=-

translate() { lng1="$1";lng2="$2";shift;shift; wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=${@// /+}&langpair=$lng1|$lng2" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }

#=-=-=-=-=-=-
# wikipedia
#=-=-=-=-=-=-

define() { dig +short txt "$*".wp.dg.cx; }

#=-=-=-=-=-=-=-=-=-=-
# GitHub Automation
#=-=-=-=-=-=-=-=-=-=-

mkgit() {
	mkdir $1
	cd $1
	git init
	touch README.md
	git add README.md
	git commit -m 'inital setup - automated'
	git remote add origin git@github.com:maman/$1.git
	git push origin master
}

#=-=-=-=-=-=-
# Archiving
#=-=-=-=-=-=-

extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xvjf $1 ;;
      *.tar.gz) tar xvzf $1 ;;
      *.tar.xz) tar xvJf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) unrar x $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xvf $1 ;;
      *.tbz2) tar xvjf $1 ;;
      *.tgz) tar xvzf $1 ;;
      *.zip) unzip $1 ;;
      *.Z) uncompress $1 ;;
      *.7z) 7z x $1 ;;
      *.xz) unxz $1 ;;
      *.exe) cabextract $1 ;;
            *) echo "\`$1': unrecognized file compression" ;;
    esac
  else
    echo "\`$1' is not a valid file"
  fi
}

#pack() {
#  case $1 in
#
#    e)
#      case $2 in
#        *.tar.bz2) tar xvjf $2 ;;
#        *.tar.gz) tar xvzf $2 ;;
#        *.bz2) bunzip2 $2 ;;
#        *.rar) unrar x $2 ;;
#        *.gz) gunzip $2 ;;
#        *.tar) tar xvf $2 ;;
#        *.tbz2) tar xvjf $2 ;;
#        *.tgz) tar xvzf $2 ;;
#        *.zip) unzip $2 ;;
#        *.Z) uncompress $2 ;;
#        *.7z) 7z x $2 ;;
#        *) echo "'$2' cannot >ark< unpack" ;;
#      esac ;;
#
#    c)
#      case $2 in
#        *.tar.*) arch=$2; shift 2;
#                    tar cvf ${arch%.*} $@
#                    case $arch in
#                      *.gz) gzip -9r ${arch%.*} ;;
#                      *.bz2) bzip2 -9zv ${arch%.*} ;;
#                    esac ;;
#        *.rar) shift; rar a -m5 -r $@; rar k $1 ;;
#        *.zip) shift; zip -9r $@ ;;
#        *.7z) shift; 7z a -mx9 $@ ;;
#        *) echo "cannot determine archive type" ;;
#      esac ;;
#
#    *)
#      echo "WHAT??" ;;
#
#  esac
#}

#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Dropbox 
# requires: dropbox-cli, cush, xclip
#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

dbheader() {
  echo -e " Dropbox - $(dropbox status)
======================================================"
}

dbshorturl() {
  url=$(cush -o -- $(dropbox puburl /home/kitty/Dropbox/Public/$1))
  echo -n $url | xclip
  echo $url
}

dbup() {
  dbheader
  cp $1 /home/kitty/Dropbox/Public
  dbshorturl $1
}

dbps() {
  dbheader
  cp $1 /home/kitty/Dropbox/Public/shot
  dbshorturl $1
}

dbls() {
  dbheader
  dropbox ls /home/kitty/Dropbox/$1
}

dburl() {
  dbheader
  dbshorturl $1
}

#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Bluetoothd
# requires gnome-bluetooth, obexftp
#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

blist(){
  echo "================================================"
  echo "             Bluetooth Device List "
  echo "================================================"
  list=$(hcitool scan | sed "1 d")
  echo $list
  echo "================================================"
}

bsend(){
  addr="$1"
  path="$2"
  fname="$3"
  obexftp -b $addr -c $path -p $fname 
}

bdown(){
  addr="$1"
  path="$2"
  fname="$3"
  obexftp -b $addr -c $path -g $fname
}

#=-=-=-=-=-=-
# VMail
#=-=-=-=-=-=-
email(){
	case $1 in

		g)
      cd /home/$USER/.config/vmail/gmaildir/
			vmail -c /home/$USER/.config/vmail/gmail
      cd /home/$USER/
      ;;

		h)
      cd /home/$USER/.config/vmail/hotmaildir/
			vmail -c /home/$USER/.config/vmail/hotmail
      cd /home/$USER/
      ;;

		*)
			echo "g for gmail"
      echo "h for hotmail"
      ;;

	esac
}
