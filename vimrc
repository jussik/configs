set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" vundle plugins here
"Plugin 'mattn/emmet-vim'
"Plugin 'rust-lang/rust.vim'
"Plugin 'racer-rust/vim-racer'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on
" Vundle - Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set mouse=a
filetype plugin on
syntax on

set autoindent
set number
set tabstop=4 shiftwidth=4 expandtab
set scrolloff=10
set relativenumber
set colorcolumn=81

" enter normal mode quicker
set ttimeoutlen=50

set background=dark
colorscheme railscasts
"set guifont=Terminus\ 9

" delete buffer without closing split with <C-c>
noremap <C-c> :bp\|bd #<CR>
" use non-vim regex for searches
noremap / /\v
" use : without shift!
nnoremap ; :
" <C-{h,j,k,l}> to move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" show cursorline only in insert mode
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" vim-racer config
"set hidden
"let g:racer_cmd="/home/jk/lib/racer/target/release/racer"
"let $RUST_SRC_PATH="/home/jk/lib/rust/src/"

" vim-airline config
set laststatus=2
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" fugitive config
set previewheight=20

" resize terminal
"if !exists("old_lines")
"    let old_lines=&lines
"    let old_columns=&columns
"    set lines=74 columns=263

"    au VimLeave * let &lines=old_lines
"    au VimLeave * let &columns=old_columns
"endif
