# set up editors
export ALTERNATE_EDITOR=nano
export EDITOR=light
export GIT_EDITOR=$ALTERNATE_EDITOR;

# Set up Firefox for Karma
export FIREFOX_BIN="/Applications/Firefox.app/Contents/MacOS/firefox-bin";

# your projects folder
export PROJECTS=~/src

# history like it should always be (no duplicate entries)
export HISTCONTROL=ignoredups:erasedups
# big big history
export HISTSIZE=100000
export HISTFILESIZE=100000
# append to history, don't overwrite it
shopt -s histappend

# Save and reload the history after each command finishes
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# load all functions
if [[ -d $DOT/functions/ ]]
then
    for file in `ls $DOT/functions/`
    do
        source $DOT/functions/$file
    done
fi


# use .localrc for SUPER SECRET CRAP that you don't
# want in your public, versioned repo.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi
