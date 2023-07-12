cdtgswitch(){
  builtin cd "$@";
  cdir=$PWD;
  if [ -e "$cdir/.tgswitchrc" ]; then
    tgswitch
  fi
}
alias cd='cdtgswitch'