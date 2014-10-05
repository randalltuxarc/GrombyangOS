#!/bin/zsh
##export ZDOTDIR=/home/scp1
#export VIMRUNTIME="$HOME/etc/vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/etc/vim/after,$HOME/etc/vim/colors" 
#export VIMINIT="so /home/scp1/etc/vimrc"

for r in $HOME/etc/zsh/*.zsh; do
  if [[ $DEBUG > 0 ]]; then
    echo "zsh: sourcing $r"
  fi
  source $r
done

source $HOME/etc/zsh/bart.theme
source $HOME/etc/zsh/02-abbrevations.zsh

export TZ='Asia/Jakarta'
