export PAGER=less

# set up editors
export EDITOR="code";
export GIT_EDITOR="$EDITOR --wait --new-window";

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

source $(brew --prefix php-version)/php-version.sh && php-version 5

# load all functions
if [[ -d $DOT/functions/ ]]
then
    for file in `ls $DOT/functions/`
    do
        source $DOT/functions/$file
    done
fi

# use .localrc for SECRETS
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi
