#!/bin/zsh

load-tgswitch() {
  local tgswitchrc_path=".tgswitchrc"

  if [[ -f "$tgswitchrc_path" || -f ".terragrunt-version" ]]; then
    tgswitch
  fi
}
add-zsh-hook chpwd load-tgswitch
load-tgswitch