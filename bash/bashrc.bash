
type -P vi &>/dev/null && export EDITOR='vi'
type -P vim &>/dev/null && export EDITOR='vim'
type -P subl &>/dev/null && export EDITOR='subl -w'
type -P atom &>/dev/null && export EDITOR='atom --wait'

# your projects folder
export WORKS=~/Works

# use .localrc for SUPER SECRET CRAP that you don't
# want in your public, versioned repo.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

# history like it should always be (no duplicate entries)
export HISTCONTROL=ignoredups:erasedups
# big big history
export HISTSIZE=100000
export HISTFILESIZE=100000
# append to history, don't overwrite it
shopt -s histappend

# Save and reload the history after each command finishes
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

function notify() {
  local title="$1"
  local subtitle="$2"
  shift 2
  terminal-notifier -activate com.googlecode.iterm2 -title "$title" -subtitle "$subtitle" -message "$*"
}

function notifyAndSay() {
  notify "$@"
  say "$@"
}
