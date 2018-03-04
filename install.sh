#!/bin/sh
#
# Usage:
#
#    sh install.sh
#
# Environment variables: VERBOSE, CP, LN, MKDIR, RM, DIRNAME, XARGS.
#
#    env VERBOSE=1 sh install.sh
#
# DO NOT EDIT THIS FILE
# 
# This file is generated by rcm(7) as:
#
#   rcup -B 0 -g
#
# To update it, re-run the above command.
#
: ${VERBOSE:=0}
: ${CP:=/bin/cp}
: ${LN:=/bin/ln}
: ${MKDIR:=/bin/mkdir}
: ${RM:=/bin/rm}
: ${DIRNAME:=/usr/bin/dirname}
: ${XARGS:=/usr/bin/xargs}
verbose() {
  if [ "$VERBOSE" -gt 0 ]; then
    echo "$@"
  fi
}
handle_file_cp() {
  if [ -e "$2" ]; then
    printf "%s " "overwrite $2? [yN]"
    read overwrite
    case "$overwrite" in
      y)
        $RM -rf "$2"
        ;;
      *)
        echo "skipping $2"
        return
        ;;
    esac
  fi
  verbose "'$1' -> '$2'"
  $DIRNAME "$2" | $XARGS $MKDIR -p
  $CP -R "$1" "$2"
}
handle_file_ln() {
  if [ -e "$2" ]; then
    printf "%s " "overwrite $2? [yN]"
    read overwrite
    case "$overwrite" in
      y)
        $RM -rf "$2"
        ;;
      *)
        echo "skipping $2"
        return
        ;;
    esac
  fi
  verbose "'$1' -> '$2'"
  $DIRNAME "$2" | $XARGS $MKDIR -p
  $LN -sf "$1" "$2"
}
handle_file_ln "/Users/Philip/.dotfiles/install.sh" "/Users/Philip/.install.sh"
handle_file_ln "/Users/Philip/.dotfiles/vim/autoload/pathogen.vim" "/Users/Philip/.vim/autoload/pathogen.vim"
handle_file_ln "/Users/Philip/.dotfiles/vim/autoload/statusline.vim" "/Users/Philip/.vim/autoload/statusline.vim"
handle_file_ln "/Users/Philip/.dotfiles/vim/config/general.vimrc" "/Users/Philip/.vim/config/general.vimrc"
handle_file_ln "/Users/Philip/.dotfiles/vim/config/plugins.vimrc" "/Users/Philip/.vim/config/plugins.vimrc"
handle_file_ln "/Users/Philip/.dotfiles/vim/doc/cheatsheet.md" "/Users/Philip/.vim/doc/cheatsheet.md"
handle_file_ln "/Users/Philip/.dotfiles/vim/ftplugin/ruby.vim" "/Users/Philip/.vim/ftplugin/ruby.vim"
handle_file_ln "/Users/Philip/.dotfiles/vim/ftplugin/tex.vim" "/Users/Philip/.vim/ftplugin/tex.vim"
handle_file_ln "/Users/Philip/.dotfiles/vimrc" "/Users/Philip/.vimrc"
handle_file_ln "/Users/Philip/.dotfiles/zpreztorc" "/Users/Philip/.zpreztorc"
handle_file_ln "/Users/Philip/.dotfiles/zshrc" "/Users/Philip/.zshrc"