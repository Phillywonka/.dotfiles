
# source zprezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# enable vi mode 
set -o vi

# source fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# base16 shell setup
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"


######################
# exports
######################

export ANDROID_HOME=/Users/Philip/Library/Android/sdk
export PATH=$ANDROID_HOME/bin:$PATH

# set the gopath
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# set the tty to disable cntrl key when using vim
stty -ixon

alias copy="tr -d '\n' | pbcopy"
