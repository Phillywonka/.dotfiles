# .dotfiles

## Requirements:

- [rcm](https://github.com/thoughtbot/rcm)
- [zsh](http://www.zsh.org)
- [zprezto](https://github.com/sorin-ionescu/prezto)
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
sudo env RCRC=$HOME/dotfiles/rcrc rcup
```

## Update dotfiles

To update the dotfiles you have to edit the files inside the ```.dotfiles``` directory.</br>
After that you can run ```rcup <file_name>``` to update the specified dotfile.


### Issues

It may be the case that te specified theme in ```zpreztorc``` file:

```sh
zstyle ':prezto:module:prompt' theme 'sorin'
```

The list of available themes can be found with ```prompt -l```.

