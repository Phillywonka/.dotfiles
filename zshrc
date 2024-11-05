# source zprezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# enable vi mode 
set -o vi
# set the tty to disable cntrl key when using vim
stty -ixon

# source fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# base16 shell setup
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"
        
######################
# exports
######################

export ANDROID_HOME=/Users/Philip/Library/Android/sdk
export PATH=$ANDROID_HOME/bin:$PATH

# set the gopath
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# set the mysql path
export MYSQL_PATH=/usr/local/Homebrew/opt/mysql@8.0
export PATH=$MYSQL_PATH/bin:$PATH

# enable zsh history in Android Studio, Intellij etc
export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

export NVM_LAZY_LOAD=true
source ~/.zsh-nvm/zsh-nvm.plugin.zsh

# adb 
export PATH=$PATH:~/Library/Android/sdk/platform-tools/
# homebrew
export PATH="$PATH:/usr/local/homebrew/bin"
export PATH="$PATH:/opt/homebrew"
eval "$(/opt/homebrew/bin/brew shellenv)"
# vim 
export EDITOR=vim
export VISUAL="$EDITOR"
# java
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export JAVA_HOME=/opt/homebrew/opt/openjdk@17
export PATH=$PATH:$JAVA_HOME/bin

alias copy="tr -d '\n' | pbcopy"
alias copyIp="ipconfig getifaddr en0 '\n' | tr -d '\n' | pbcopy"
