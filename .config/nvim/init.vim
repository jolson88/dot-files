" Fish doesn't play all that well with others
set shell=/bin/bash
let mapleader = "\<Space>"

set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tomasr/molokai'

" VIM enhancements
Plugin 'tpope/vim-fugitive'

" GUI enhancements
Plugin 'itchyny/lightline.vim'
Plugin 'w0rp/ale'
Plugin 'machakann/vim-highlightedyank'
Plugin 'andymass/vim-matchup'

" Fuzzy finder
Plugin 'airblade/vim-rooter'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

" Semantic language support
Plugin 'phildawes/racer'
" Plugin 'racer-rust/vim-racer'

" Syntactic language support
Plugin 'cespare/vim-toml'
Plugin 'stephpy/vim-yaml'
Plugin 'rust-lang/rust.vim'
Plugin 'dag/vim-fish'
Plugin 'plasticboy/vim-markdown'
call vundle#end()
filetype plugin indent on

syntax on
colorscheme molokai
set autoindent                         " Copy indent from current line
set autoread                           " Read open files again when changed outside Vim
set autowrite                          " Write a modified buffer on each :next , ...
set backspace=indent,eol,start         " Backspacing over everything in insert mode
set history=200                        " Keep 200 lines of command line history
set hlsearch                           " Highlight the last used search pattern
set incsearch                          " Do incremental searching
set listchars=""                       " Empty the listchars
set listchars=tab:>.                   " A tab will be displayed as >...
set listchars+=trail:.                 " Trailing white spaces will be displayed as .
set nobackup                           " Don't constantly write backup files
set noswapfile                         " Ain't nobody got time for swap files
set noerrorbells                       " Don't beep
set nowrap                             " Do not wrap lines
set shiftwidth=4                       " Number of spaces to use for each step of indent
set showcmd                            " Display incomplete commands in the bottom line of the screen
set ignorecase                         " Ignore case when searching....
set smartcase                          " ...unless uppercase letter are used
set tabstop=4                          " Number of spaces that a <Tab> counts for
set expandtab                          " Make vim use spaces and not tabs
set undolevels=1000                    " Never can be too careful when it comes to undoing
set hidden                             " Don't unload the buffer when we switch between them. Saves undo history
set visualbell                         " Visual bell instead of beeping
set wildignore=*.swp,*.bak,*.tmp,tmp/**,node_modules/**  " wildmenu: ignore these extensions
set wildmenu                           " Command-line completion in an enhanced mode
set ttimeoutlen=50                     " Fix delay when escaping from insert with Esc
set noshowmode                         " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set showbreak=↪\
set synmaxcol=256
set scrolloff=3
set clipboard=unnamed
au BufNewFile,BufRead *.json set ft=javascript
set pastetoggle=<F3>
set nofoldenable

nnoremap <Esc><Esc> :nohlsearch<CR>     " Remove last search highlight
inoremap <C-c><C-c> <C-o>:wq<CR>        " Primarily used with git commit to quickly exit
map <Leader>rs :so $MYVIMRC<CR>         " Re-source the .nvimrc file being worked on
map <Leader>s :w<CR>                    
map <Leader>x :q<CR>
map <Leader>o :CtrlP<CR>                " Open file menu
map <Leader>b :CtrlPBuffer<CR>          " Open buffer menu
map <Leader>f :CtrlPMRUFiles<CR>        " Open most-recently used files
map <Leader>gs :Gstatus<CR>
map <Leader>gc :Gcommit<CR>
