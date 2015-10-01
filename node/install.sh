#!/bin/sh

if test ! $(which node) -a $(which brew)
then
  inform 'Installing node for you.'
  brew install node > /tmp/node-install.log

  inform 'Installing npm for you.'
  curl -L https://npmjs.org/install.sh | sh
fi

# install some dependencies
npm install -g uglify-js;
npm install -g grunt-cli;
npm install -g jsonlint;
