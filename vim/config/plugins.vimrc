call pathogen#infect()                  "enable pathogen

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

" Powerline setup
"let g:Powerline_symbols = 'fancy'
"set  rtp+=//usr/local/lib/python2.7/site-packages/powerline/bindings/vim
"set laststatus=2
"

"Vimdiff

"""""""""""""""""""

" Better color scheme settings vimdiff.
highlight DiffAdd    cterm=BOLD ctermfg=NONE ctermbg=22
highlight DiffDelete cterm=BOLD ctermfg=NONE ctermbg=52
highlight DiffChange cterm=BOLD ctermfg=NONE ctermbg=23
highlight DiffText   cterm=BOLD ctermfg=red ctermbg=23

" Git difftool
"imap <leader>cq :cq<CR>
"noremap <leader>cq :cq<CR>
"vmap <leader>cq :cq<CR>
