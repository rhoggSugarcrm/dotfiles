# rhoggSugarcrm does dotfiles

## dotfiles

Your [dotfiles](http://dotfiles.github.com) are how you personalize your system.
These are mine based on [Filipe Guerra's dotfiles](https://github.com/alias-mac/dotfiles),
which are in turn based on
[holman's dot files](https://github.com/holman/dotfiles).

## Install

Run this:

```sh
git clone https://github.com/rhoggSugarcrm/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`, though.

The main file you'll want to change right off the bat is `bash/bashrc.symlink`,
which sets up a few paths that'll be different on your particular machine.
If you prefer you can use the `~/.localrc` to override them per instance.

## Topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.bash` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

### Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.bash**: Any files ending in `.bash` get loaded into your
  environment.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into your
  `$HOME`. This is so you can keep all of those versioned in your dotfiles but
  still keep those autoloaded files in your home directory. These get symlinked
  in when you run `script/bootstrap`.
- **topic/\*.completion.bash**: Any files ending in `completion.bash` get
  loaded last so that they get loaded after we set up all `*.bash` files
  (dependencies).

## Bugs

This is just for my own use.
