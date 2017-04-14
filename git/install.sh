#!/usr/bin/env bash

if ! [ -f git/gitconfig.symlink ]
then
  inform 'setup gitconfig'

  git_credential='cache'

  user ' - What is your github author name?'
  read -e git_authorname < /dev/tty
  user ' - What is your github author email?'
  read -e git_authoremail < /dev/tty

  sed -e "s/AUTHORNAME/$git_authorname/g" -e "s/AUTHOREMAIL/$git_authoremail/g" -e "s/GIT_CREDENTIAL_HELPER/$git_credential/g" git/gitconfig.symlink.example > git/gitconfig.symlink

  success 'gitconfig generated'
fi
