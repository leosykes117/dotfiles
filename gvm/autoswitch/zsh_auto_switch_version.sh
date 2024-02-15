#!/bin/zsh

autoload -U add-zsh-hook

gvm_echo () {
	command printf %s\\n "$*" 2> /dev/null
}

nvm_find_up () {
	local path_
	path_="${PWD}"
	while [ "${path_}" != "" ] && [ ! -f "${path_}/${1-}" ]
	do
		path_=${path_%/*}
	done
	gvm_echo "${path_}"
}

gvm_find_gvmrc(){
    local dir
	dir="$(nvm_find_up '.nvmrc')"
	if [ -e "${dir}/.nvmrc" ]
	then
		gvm_echo "${dir}/.nvmrc"
	fi
}

load-gvmrc() {
  local gvmrc_path="$(gvm_find_gvmrc)"

  if [ -n "$gvmrc_path" ]; then
    local gvmrc_go_version=$(nvm version "$(cat "${gvmrc_path}")")

    if [ "$gvmrc_go_version" = "N/A" ]; then
      nvm install
    elif [ "$gvmrc_go_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD gvm_find_gvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to gvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-gvmrc
load-gvmrc