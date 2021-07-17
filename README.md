# dotfiles

This is an attempt to keep configuration files synced between devices.
Currently, I'm using GNU Stow to manage my dotfiles locally. I'm attempting to
use git/github to store the configuration files in a central repository.

## To configure a machine

1. clone the repository into a `~/.dotfiles` directory
2. Move to that directory and stow
3. I think it's necessary to run `doom sync` or `doom install` (this needs testing)

## Issues

One recurring problem I've had with git is: how do I manage subrepositories?
Git issues a warning when trying to stage a commit with other repositories.
This seems like it would be a **very** common issue as most projects have some
dependencies. I have read a little on how git handles submodules, but this
doesn't seem to be the right solution.

## Solution

I ended up removing the `.emacs.d` and `.doom.d` directories completely. Then I
reinstalled them using the `git subtree` command. This leaves those subtrees out
of the version tracking which is what I wanted.

``` sh
# inside the <dotfiles> directory
git submodule add --squash --prefix .emacs.d https://github.com/hlissner/doom-emacs develop
```

