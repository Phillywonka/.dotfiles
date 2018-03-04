nnoremap <SPACE> <Nop>
let mapleader=" "                     " Set the leader to space

set dir=~/.vimswap//,/var/tmp//,/tmp//,. " Store swap files in fixed location, not current directory.

" Update term title but restore old title after leaving Vim.
" set title
" set titleold=

" Disable the error bell.
set vb                                  " enable vim's internal visual bell.
set t_vb=                               " set the effect of the vim visual bell to do nothing.

set columns=120                         " Set maximmum column width.

set scrolloff=5                         " Start scrolling when 5 lines from edge

set t_Co=256                            " enable 256 colors
syntax on
set relativenumber                      " enable relative line numbers
set autoindent                          " enable autoindent
set backspace=indent,eol,start          " make backspace work on linebreaks
imap <C-Return> <CR><CR><C-o>k<Tab>     " auto indent with new line

" Move to next and previous function
noremap <C-n> ]mzt
noremap <C-p> [mzt
noremap <C-S-n> ]Mzt
noremap <C-S-p> [Mzt

" Go to matching bracket
noremap <C-i> %

" Move to first line of paragraph
map <C-n> }
map <C-p> {

" Make kj0$ work on wrapped lines
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

" Extension -> filetype mappings.
let filetype_m='objc'
let filetype_pl='prolog'

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       "  TABs to spaces

" easy system clipboard copy/paste
set mouse=a


"Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Creating splits
nnoremap ,w <C-w>

"Mappings for saving and quiting
nmap <C-s> :w<CR>
nmap <C-q> :q<CR>
vmap <C-s> <Esc><c-s>gv
vmap <C-q> <Esc><c-q>gv
imap <C-s> <Esc><c-s>
imap <C-q> <Esc><c-q>

" Moving from panes.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" easy system clipboard copy/paste
noremap <space>y "*y
noremap yy "*yy
noremap p "*p
noremap P "*P
inoremap <C-p> <C-c>"*p
nnoremap <space>D "*dd
nnoremap <space>d "*d
vnoremap <space>d "*d

" Open new split panes to right and bottom
set splitbelow
set splitright

"Jump out of parentheses etc
inoremap <C-e> <C-o>A
inoremap ( ()<Esc>i

