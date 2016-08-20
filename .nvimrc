set nocompatible
filetype off

" Vundle/Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

" Initial config
syntax on
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
set number
set rnu

" Color scheme config
syntax enable
colorscheme solarized
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
set background=dark

" Tool config
set laststatus=2                                    " Make the second to last line of vim our status line
let g:airline_theme="solarized"
let g:airline_powerline_fonts = 1
let g:javscript_plugin_jsdoc = 1
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my-snippets"]

" Key mappings
nnoremap <Esc><Esc> :nohlsearch<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Leader configuration
let mapleader=" "
map <Leader>rs :so $MYVIMRC<CR>
map <Leader>s :w<CR>
map <Leader>x :q<CR>
map <Leader>o :CtrlP<CR>
map <Leader>b :CtrlPBuffer<CR>
map <Leader>f :CtrlPMRUFiles<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gp :Git push<CR>
map <Leader>grm :Git rebase master<CR>
map <Leader>d :NERDTreeToggle<CR>
map <Leader>t :terminal<CR>
