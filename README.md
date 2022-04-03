# dotfiles

This is an attempt to keep configuration files synced between devices.
Currently, I'm using GNU Stow to manage my dotfiles locally. I'm attempting to
use git/github to store the configuration files in a central repository.

## To configure a machine

1. clone the repository into a `~/.dotfiles` directory
2. Move to that directory and stow necessary files/directories

## Issues

One recurring problem I've had with git is: how do I manage subrepositories?
Git issues a warning when trying to stage a commit with other repositories.
This seems like it would be a **very** common issue as most projects have some
dependencies.

## Solution

I ended up removing the `.emacs.d` and `.doom.d` directories completely. Then I
reinstalled them using the `git subtree` command. This leaves those subtrees out
of the version tracking which is what I wanted.

``` sh
# inside the git repo
git submodule add https://github.com/user/repo ./path/to/module
```

