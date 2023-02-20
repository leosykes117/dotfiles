# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Pyenv
eval "$(pyenv init --path)"

# pnpm
export PNPM_HOME="/Users/leonardo/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# go version manager
[[ -s "/Users/leonardo/.gvm/scripts/gvm" ]] && source "/Users/leonardo/.gvm/scripts/gvm"
# end go version manager

# go setup
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
# end go setup

# Added by Toolbox App
export PATH="$PATH:/Users/leonardo/Library/Application Support/JetBrains/Toolbox/scripts"

