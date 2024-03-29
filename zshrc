# User configuration

echo 'Hello there Jacques!'

# Set Variables

## Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

## Skip Mac GateKeeper for installed casks
# export HOMEBREW_CASK_OPTS="--no-quarantine"

# Change ZSH Options


# Create Aliases
# alias ls='ls -lAFh'
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'

# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variable

# Write Handy Functions
function mkcd() {
    mkdir -p "$@" && cd "$_";
}

# Ush ZSH Plugins


# Other Surprises!
