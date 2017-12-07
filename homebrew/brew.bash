type -P brew &>/dev/null || return

export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_VERBOSE=1
export HOMEBREW_NO_GITHUB_API=1
