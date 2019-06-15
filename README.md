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

#Reboot your device
```



## Update dotfiles

To update the dotfiles you have to edit the files inside the ```.dotfiles``` directory.
After that you can run ```rcup <file_name>``` to update the specified dotfile.


### Issues

#### zprezto theme
It may be the case that te specified theme in ```zpreztorc``` file:

```sh
zstyle ':prezto:module:prompt' theme 'pure'
```

The list of available themes can be found with ```prompt -l```.

#### Raspbian support

The vim configuration doens't work perfectly yet on Raspbian.
