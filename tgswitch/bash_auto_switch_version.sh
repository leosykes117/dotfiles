#!/bin/bash

cdtgswitch(){
  builtin cd "$@" || exit;
  cdir=$PWD;
  if [ -e "$cdir/.tgswitchrc" ]; then
    tgswitch
  fi
}
alias cd='cdtgswitch'