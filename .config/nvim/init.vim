" Fish doesn't play all that well with others
set shell=/bin/bash
let mapleader = "\<Space>"

set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

" VIM enhancements
Plugin 'tpope/vim-fugitive'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'justinmk/vim-sneak'

" GUI enhancements
Plugin 'itchyny/lightline.vim'
Plugin 'machakann/vim-highlightedyank'
Plugin 'andymass/vim-matchup'

" Fuzzy finder
Plugin 'airblade/vim-rooter'
Plugin 'ctrlpvim/ctrlp.vim'

" Semantic language support
"Plug 'phildawes/racer'
"Plug 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'
Plugin 'ncm2/ncm2'
Plugin 'roxma/nvim-yarp'

" Completion plugins
Plugin 'ncm2/ncm2-bufword'
Plugin 'ncm2/ncm2-tmux'
Plugin 'ncm2/ncm2-path'
Plugin 'ncm2/ncm2-racer'

" Syntactic language support
Plugin 'cespare/vim-toml'
Plugin 'stephpy/vim-yaml'
Plugin 'dag/vim-fish'
Plugin 'plasticboy/vim-markdown'
call vundle#end()

" Themes
filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized

" Lightline
" let g:lightline = { 'colorscheme': 'wombat' }
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
\ }
function! LightlineFilename()
  return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction

" Rust
" https://github.com/rust-lang/rust.vim/issues/192
let g:rustfmt_command = "rustfmt +nightly"
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'
let $RUST_SRC_PATH = systemlist("rustc --print sysroot")[0] . "/lib/rustlib/src/rust/src"

" Completion
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
" tab to select
" and don't hijack my enter key
inoremap <expr><Tab> (pumvisible()?(empty(v:completed_item)?"\<C-n>":"\<C-y>"):"\<Tab>")
inoremap <expr><CR> (pumvisible()?(empty(v:completed_item)?"\<CR>\<CR>":"\<C-y>"):"\<CR>")

" File/Buffer Open
" ignore .gitignore files
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Permanent undo
set undodir=~/.vimdid
set undofile

" Decent wildmenu
set wildmenu
set wildmode=list:longest
set wildignore=.hg,.svn,*~,*.png,*.jpg,*.gif,*.settings,Thumbs.db,*.min.js,*.swp,publish/*,intermediate/*,*.o,*.hi,Zend,vendor

" Wrapping options
set formatoptions=tc " wrap text and comments using textwidth
set formatoptions+=r " continue comments when pressing ENTER in I mode
set formatoptions+=q " enable formatting of comments with gq
set formatoptions+=n " detect lists for formatting
set formatoptions+=b " auto-wrap in insert mode, and do not wrap old long lines

" Proper search
set incsearch
set ignorecase
set smartcase
set gdefault

" GUI settings
set noerrorbells                       " Don't beep
set listchars=""                       " Empty the listchars
set listchars=tab:>.                   " A tab will be displayed as >...
set listchars+=trail:.                 " Trailing white spaces will be displayed as .
set backspace=indent,eol,start         " Backspacing over everything in insert mode
set autoindent                         " Copy indent from current line
set autoread                           " Read open files again when changed outside Vim
set autowrite                          " Write a modified buffer on each :next , ...
set history=200                        " Keep 200 lines of command line history
set nobackup                           " Don't constantly write backup files
set noswapfile                         " Ain't nobody got time for swap files
set nowrap                             " Do not wrap lines
set shiftwidth=4                       " Number of spaces to use for each step of indent
set showcmd                            " Display incomplete commands in the bottom line of the screen
set tabstop=4                          " Number of spaces that a <Tab> counts for
set expandtab                          " Make vim use spaces and not tabs
set undolevels=1000                    " Never can be too careful when it comes to undoing
set hidden                             " Don't unload the buffer when we switch between them. Saves undo history
set visualbell                         " Visual bell instead of beeping
set ttimeoutlen=50                     " Fix delay when escaping from insert with Esc
set noshowmode                         " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set showbreak=↪\
set synmaxcol=256
set scrolloff=3
set clipboard=unnamed
au BufNewFile,BufRead *.json set ft=javascript
set pastetoggle=<F3>
set nofoldenable
set ruler                               " Where am I?
set ttyfast
" https://github.com/vim/vim/issues/1735#issuecomment-383353563
set lazyredraw
set synmaxcol=500
set laststatus=2
set relativenumber                      " Relative line numbers
set number                              " Also show current absolute line
set colorcolumn=100                     " and give me a colored column
set showcmd                             " Show (partial) command in status line.
set mouse=a                             " Enable mouse usage (all modes) in terminals
set shortmess+=c                        " don't give |ins-completion-menu| messages.
set completeopt=noinsert,menuone,noselect

" Hotkeys
nnoremap <leader>rs :so $MYVIMRC<CR>         " Re-source the .nvimrc file being worked on
nnoremap <leader>w :w<CR>                    
nnoremap <leader>x :q<CR>
nnoremap <leader>o :CtrlP<CR>                " Open file menu
nnoremap <leader>b :CtrlPBuffer<CR>          " Open buffer menu
nnoremap <leader>f :CtrlPMRUFiles<CR>        " Open most-recently used files

" ; as :
nnoremap ; :

" Neat X clipboard integration
" ,p will paste clipboard into buffer
" ,c will copy entire buffer into clipboard
noremap <leader>p :read !xsel --clipboard --output<cr>
noremap <leader>c :w !xsel -ib<cr><cr>

" Open new file adjacent to current file
nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" <leader><leader> toggles between buffers
nnoremap <leader><leader> <c-^>

" <leader>= reformats current range
nnoremap <leader>= :'<,'>RustFmtRange<cr>

" I can type :help on my own, thanks.
map <F1> <Esc>
imap <F1> <Esc>

" # Autocommands
" Prevent accidental writes to buffers that shouldn't be edited
autocmd BufRead *.orig set readonly

" Leave paste mode when leaving insert mode
autocmd InsertLeave * set nopaste

" Jump to last edit position on opening file
if has("autocmd")
  " https://stackoverflow.com/questions/31449496/vim-ignore-specifc-file-in-autocommand
  au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

