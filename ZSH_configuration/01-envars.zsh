#==============================================================
#        __       __       __       __       __
#       / /\     / /\     /_/\     / /\     / /\
#      / / |_   / / /\   _\ \ \   / /  \   / / /
#     /_/  |/\ /_/ /  \ /_/\/  \ /_/ / /_ /_/ / /\
#  __ \_\/|  / \ \  / / \ \  /\/ \ \  __/ \ \ \/ /
# /_/\  |_| /   \ \/ /   \ \ \    \ \ \    \ \  /
# \_\/  \_\/     \_\/     \_\/     \_\/     \_\/
#
# E N V I R O N M E N T   V A R I A B L E   S E T T I N G S

#=-=-=-=-=-=-=-=-=-=-
# generic exports
#=-=-=-=-=-=-=-=-=-=-

export SHELL='/bin/zsh'
export EDITOR='vim'
export VISUAL='vim'
export SUDO_EDITOR='vim'
export PAGER='less'
export MANPAGER='less'
if [ -z "$DISPLAY" ]; then
    export BROWSER="elinks '%s' &"
else
    export BROWSER=firefox
fi

#=-=-=-=-=-=-=-=-=-=-
# various exports
#=-=-=-=-=-=-=-=-=-=-

export OOO_FORCE_DESKTOP=gnome
export MOZ_DISABLE_PANGO=1
export FIREFOX_DSP=none

#=-=-=-=-
# path
#=-=-=-=-

export PATH="/sbin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/home/derp/bin:$PATH"
export PATH="/usr/lib/cw:$PATH"
export PATH="/opt/android-sdk/tools:$PATH"
export PATH="/opt/android-sdk/platform-tools:$PATH"

#=-=-=-=-=-=-
# PERL Path
#=-=-=-=-=-=-

export PERL_LOCAL_LIB_ROOT="/home/derp/perl5"
export PERL_MB_OPT="--install_base /home/derp/perl5"
export PERL_MM_OPT="INSTALL_BASE=/home/derp/perl5"
export PERL5LIB="/home/derp/perl5/lib/perl5/i686-linux-thread-multi:/home/derp/perl5/lib/perl5"
export PATH="/home/derp/perl5/bin:$PATH"

#=-=-=-=-=-=-
# Ruby Path
#=-=-=-=-=-=-

export PATH="/home/derp/.gem/ruby/1.9.1/bin:$PATH"

#=-=-=-=-=-=-=-=-=-=-
# man pager colors 
#=-=-=-=-=-=-=-=-=-=-

export GROFF_NO_SGR=1                   # output ANSI color escape sequences in raw form
export LESS_TERMCAP_mb=$'\E[0;31m'      # blinking
export LESS_TERMCAP_md=$'\E[1;34m'      # bold          used for headings
export LESS_TERMCAP_us=$'\E[1;32m'      # underline     used for paths,keywords
export LESS_TERMCAP_so=$'\E[41;1;37m'   # standout      used for statusbar/search
export LESS_TERMCAP_ue=$'\E[0m'         # end underline
export LESS_TERMCAP_se=$'\E[0m'         # end standout-mode
export LESS_TERMCAP_me=$'\E[0m'         # end all modes like so, us, mb, md and mr

#=-=-=-=-=-=-=-=-
# vmail options
#=-=-=-=-=-=-=-=-

export VMAIL_BROWSER='elinks -dump'
export VMAIL_HTML_PART_READER='elinks -dump'

#=-=-=-=-=-=-=-=-=-=-
# Fucking TERMINFO
#=-=-=-=-=-=-=-=-=-=-

export TERMINFO=~/.terminfo

#=-=-=-=-=-=-=-=-
# Todo.txt
#=-=-=-=-=-=-=-=-

export TODOTXT_DEFAULT_ACTION=ls
export TODOTXT_SORT_COMMAND='env LC_COLLATE=C sort -k 2,2 -k 1,1n'

#=-=-=-=-=-=-=-=-=-=-=-=-
# NVIDIA VDPAU Flash Fix
#=-=-=-=-=-=-=-=-=-=-=-=-

export VDPAU_NVIDIA_NO_OVERLAY=1

#=-=-=-=-=-=-=-=-=-=-
# Infinality Envars
#=-=-=-=-=-=-=-=-=-=-

export INFINALITY_FT_GLOBAL_EMBOLDEN_X_VALUE=0
export INFINALITY_FT_GLOBAL_EMBOLDEN_Y_VALUE=8
export INFINALITY_FT_BOLD_EMBOLDEN_X_VALUE=16
export INFINALITY_FT_BOLD_EMBOLDEN_X_VALUE=8

#=-=-=-=-=-=-
# MPD Envars
#=-=-=-=-=-=-

export MPD_PORT=3412

#=-=-=-=-=-=-
# Wine Arch
#=-=-=-=-=-=-
# x86
export WINEARCH=win32
export WINEPREFIX=~/.wine32
# x64
#export WINEARCH=win64
#export WINEPREFIX=~/.wine64
