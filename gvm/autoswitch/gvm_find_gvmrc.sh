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