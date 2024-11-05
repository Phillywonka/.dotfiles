set nocp 
call pathogen#infect()                  "enable pathogen

if exists('/~/.dotfiles') 
      source /~/.dotfiles/vim/autoload/pathogen.vim
      source /~/.dotfiles/vim/vimrc
endif

"""""""""""""""""""
" Vundle
"""""""""""""""""""
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
    Plugin 'chriskempson/base16-vim'
call vundle#end()            

set nocompatible              " be iMproved, required
filetype on                   " required
filetype plugin indent on     "required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

"Vimdiff

"""""""""""""""""""

" Better color scheme settings vimdiff.
highlight DiffAdd    cterm=BOLD ctermfg=NONE ctermbg=22
highlight DiffDelete cterm=BOLD ctermfg=NONE ctermbg=52
highlight DiffChange cterm=BOLD ctermfg=NONE ctermbg=23
highlight DiffText   cterm=BOLD ctermfg=red ctermbg=23
