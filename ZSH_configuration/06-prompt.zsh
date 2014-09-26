#==============================================================
#        __       __       __       __       __
#       / /\     / /\     /_/\     / /\     / /\
#      / / |_   / / /\   _\ \ \   / /  \   / / /
#     /_/  |/\ /_/ /  \ /_/\/  \ /_/ / /_ /_/ / /\
#  __ \_\/|  / \ \  / / \ \  /\/ \ \  __/ \ \ \/ /
# /_/\  |_| /   \ \/ /   \ \ \    \ \ \    \ \  /
# \_\/  \_\/     \_\/     \_\/     \_\/     \_\/
#
# P R O M P T  S E T T I N G S
#

local FMT_BRANCH="%F{9}(%s:%F{7}%r%F{9}) %F{5}%b%F{199}%u%c"
local FMT_ACTION="(%F{3}%a%f)"
local FMT_PATH="%F{1}%R%F{2}/%S%f"

setprompt() {
  local USER="%(#.%F{1}.%F{3})%n%f"
  local HOST="%F{2}%M%f"
  local PWD="%F{7}$($HOME/.config/zsh/rzsh_path)%f"
  local TTY="%F{4}%y%f"
  #local PRMPT="${USER}@$HOST:${TTY}: ${PWD}
  #${EXIT} %F{202}»%f "
  local PRMPT=" ${PWD} %F{8}»%f "

  if [[ "${vcs_info_msg_0_}" == "" ]]; then
    RPROMPT=" "
    PROMPT="$PRMPT"
  else
    RPROMPT="${vcs_info_msg_0_}"
    PROMPT="$PRMPT"
  fi
}

#=-=-=-=-=-=-=-=-
# Title stuffs
#=-=-=-=-=-=-=-=-

precmd() {
  export PWD=$(pwd)
  vcs_info
  setprompt

  case $TERM in
    rxvt-256color | screen-256color ) 
      #print -Pn "\e]0;Terminal %n@%m: %~\a" ;;
      print -Pn "\e]0;Terminal\a" ;;
  esac
}

preexec() {
  case $TERM in
    rxvt-256color | screen-256color )
      print -Pn "\e]0;Terminal —  $1\a" ;;
  esac
}

# vim: set ft=zsh :
