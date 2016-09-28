#!/usr/bin/env bash
#
# Homebrew
#
# If we're on a Mac, let's install http://brew.sh and setup some of the common
# dependencies needed (or at least desired) for us.

# FIXME: this should support Linuxbrew too
# Check if we already have Homebrew installed
type -P brew &>/dev/null ||
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log

brew bundle -v;
