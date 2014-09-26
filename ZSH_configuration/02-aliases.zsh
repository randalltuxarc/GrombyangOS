#==============================================================
#        __       __       __       __       __
#       / /\     / /\     /_/\     / /\     / /\
#      / / |_   / / /\   _\ \ \   / /  \   / / /
#     /_/  |/\ /_/ /  \ /_/\/  \ /_/ / /_ /_/ / /\
#  __ \_\/|  / \ \  / / \ \  /\/ \ \  __/ \ \ \/ /
# /_/\  |_| /   \ \/ /   \ \ \    \ \ \    \ \  /
# \_\/  \_\/     \_\/     \_\/     \_\/     \_\/
#
# A L I A S E S   F I L E   F O R   Z S H
#

# Sudo aliases fix
alias sudo='sudo '

# Clyde - Package Mgmt
alias clyde='yaourt'
alias cins='yaourt -S'
alias clup='sudo pacman -Sy'
alias clur='sudo pacman -Rsc'
alias clin='sudo pacman -Sc'
alias bang='sudo pacman-color -Syu'

# APT - Package Mgmt
#alias apup='sudo apt-get update'
#alias apgd='sudo apt-get upgrade'
#alias apin='sudo apt-get install'
#alias apsc='sudo apt-get source'
#alias apbd='sudo apt-get build-dep'
#alias aprm='sudo apt-get remove --purge'

# VIM
#alias vim='gvim'

# CDEMU
alias cdemu='cdemu -b system'

# CD
alias cd..='cd ..'
alias ..='cd ..'
alias ~='cd ~'

# Reboot&Shutdown
alias reboot='sudo shutdown -r now'
alias shutdown='sudo shutdown -h now'

# RM
alias rm='rm -r'
alias rm!='rm -rf'

# CP
alias cp='cp -r'

# LS
alias ls='ls -Xp --color=auto'
#alias ls='ls++'

# CAT
#alias cat='skate'

# todo.txt
alias t='todo -d ~/.config/todo/todo-color'

# rtorrent daemon
#alias rtorrent='screen -x'

# DMESG
#alias dmesg='colored_dmesg'

# GREP
alias grep='grep --color=always'

# GIT
#alias git='git-achievements'
#alias commit!='git commit'
#alias commit='git commit --interactive'
#alias gstat='git status'
#alias gadd!='git add'
#alias gadd='git add --interactive'
#alias grem!='git rm -f'
#alias grem='git rm --cached'
#alias gmov='git mv'
#alias glog='git log --graph'
#alias glist='git ls-files --stage'
#alias gshow='git show-branch --more=10 | less'
#alias gblame='git blame'


# XAMPP
alias xast='sudo xampp start'
alias xarb='sudo xampp restart'
alias xkill='sudo xampp stop'

# Hamachi
alias hmlgin='hamachi login'
alias hmjoin='hamachi do-join'
alias hmlist='hamachi list'
alias hmout='hamachi logoff'

# Ruby
#alias gem='sudo gem'

# Various Command
alias cls='clear'
alias youtube='youtube-dl'
alias serve='annyong'
alias xp='xprop | grep "WM_WINDOW_ROLE\|WM_CLASS" && echo "WM_CLASS(STRING) = \"NAME\", \"CLASS\""'
alias twitter='earthquake'

# GTK3 dark
alias gnome-terminal="XDG_CONFIG_HOME=$HOME/.config/gnome-terminal gnome-terminal"
alias mplayer="XDG_CONFIG_HOME=$HOME/.config/mplayer mplayer"

