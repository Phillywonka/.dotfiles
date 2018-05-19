# .dotfiles

## Requirements:

- [rcm](https://github.com/thoughtbot/rcm)
- [zsh](http://www.zsh.org)
- [fzf](https://github.com/junegunn/fzf)

### Debian users
Debian users must have **vim-gtk** installed because Debian's default vim is not compiled with clipboard.

## Installation

To install the dotfiles:

```sh
#Clone the git repository in your home directory.
git clone https://github.com/Phillywonka/.dotfiles.git

#This command will create symlinks for config files in your home directory.</br>
#Setting the RCRC environment variable tells rcup to use standard configuration options.

env RCRC=$HOME/dotfiles/rcrc rcup
```
