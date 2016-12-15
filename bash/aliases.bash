# reload bash stuff
alias reload='. ~/.bash_profile'

# make me a password
alias genpasswd='echo `env LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c 10`'

# switch to hub
alias "git"="hub";

# typos
alias "subversion"="svn";
alias "snv"="svn";
alias "sl"="ls";

# ignore binary files when grepping.
alias "grep"="grep -I";

# mkdir should be recursive
alias "mkdir"="mkdir -p";

# gzip-based programs should not start with "z"
alias "gzcat"="zcat";
alias "gzmore"="zmore";
alias "gzless"="gzmore";
alias "gzgrep"="zgrep";
alias "gzfgrep"="zfgrep";
alias "gzegrep"="zegrep";
alias "gzdiff"="zdiff";
alias "gzcmp"="zcmp";

# safety
alias "rm"="rm -i -v";
alias "cp"="cp -i -R -v";
alias "mv"="mv -i -v";

# I use sed -i far more often than plain sed, but the behaviours are different enough to cause problems
alias "ised"="sed -i";

# clear
alias "clara"="clear";
alias "cclear"="clear";
alias "coear"="clear";
alias "cewar"="clear";
alias "ceer"="clear";
alias "cls"="clear";
alias "cleaer"="clear";
alias "claeer"="clear";
alias "cle"="clear";
alias "claer"="clear";
alias "clar"="clear";
alias "caer"="clear";
alias "ear"="clear";
alias "lear"="clear";
alias "clera"="clear";
alias "clwar"="clear";
alias "clqar"="clear";
alias "cjear"="clear";
alias "cleer"="clear";
alias "cleear"="clear";
alias "laer"="clear";
alias "clare"="clear";
alias "cleare"="clear";
alias "cler"="clear";
alias "ceaer"="clear";
alias "clea"="clear";
alias "celar"="clear";
alias "clra"="clear";
alias "car"="clear";
alias "cer"="clear";
alias "clrae"="clear";
alias "cera"="clear";
alias "ckear"="clear";
alias "ckera"="clear";
alias "cearl"="clear";
alias "clere"="clear";
alias "cleera"="clear";
alias "lcear"="clear";
alias "lcare"="clear";
alias "caerd"="clear";
alias "cear"="clear";
alias "clr"="clear";
alias "clearclear"="clear";
alias "clear"="clear; ls; echo;";

# Validate Apache files
alias "validate-apache"="httpd -t";

# gjslint
alias gjslint='/usr/local/bin/gjslint --unix_mode --custom_jsdoc_tags=inheritdoc,alias,singleton';

# for colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# ##############################################################################

# PHP aliases

# PHP needs an REPL, but when enabled it can't operate normally.
# Work around by defining iphp ("interactive" PHP)
alias "iphp"="php -a";

alias "phpcs"="phpcs --standard=psr2";
alias "phpcbf"="phpcbf --standard=psr2";

# ##############################################################################

# grep colors
export GREP_OPTIONS='--color=auto'

# alias for listing
alias ll='ls -lah'
alias la='ls -a'
alias l='ls -lh'

# alias for disk tools
alias du='du -h'

# aliases for Git
alias "gp"="git push";
alias "gc"="git commit";
alias "gs"="git status -sb";

# compatibility with zsh
alias "rehash"="hash -r";

################################

# Emacs
alias "emacs"="emacs -nw";

###############################

# Networks (OS X)
alias "getPorts"="sudo lsof -i -P | grep -i listen";
