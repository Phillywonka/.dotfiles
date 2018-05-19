# .dotfiles

Requirements:

- [rcm](https://github.com/thoughtbot/rcm)
- [vundle](https://github.com/VundleVim/Vundle.vim)

Debian users must have vim-gtk installed because Debian's default vim is not compiled with clipboard.

To install the dotfiles:

```
  git clone https://github.com/Phillywonka/.dotfiles.git
  env RCRC=$HOME/dotfiles/rcrc rcup
```