type -P brew &>/dev/null || return

export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_DEVELOPER=1
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_VERBOSE=1

# Sources a file
# Accepts 1 param which is the file we want include
function __open_war_loadifexists() {

    if [ -f $1 ]; then
        . $1
    fi
}
