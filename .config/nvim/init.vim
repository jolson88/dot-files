" Fish doesn't play all that well with others
set shell=/bin/bash

set nocompatible
filetype on
filetype off

" ****************
" BUNDLES
" ****************
call plug#begin('~/.local/share/nvim/plugged')

" Themes
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'

" VIM enhancements
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'justinmk/vim-sneak'
Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'

" Languages
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'autozimu/LanguageClient-neovim'
Plug 'junegunn/fzf'                            " Optional add-on for LanguageClient-neovim

" Syntactic language support
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'dag/vim-fish'
Plug 'plasticboy/vim-markdown'

call plug#end()

" **************** 
" Themes
" ****************
set termguicolors
filetype plugin indent on
syntax enable
let base16colorspace=256
set background=dark
colorscheme base16-default-dark

" GUI settings
set autoindent                         " Copy indent from current line
set autoread                           " Read open files again when changed outside Vim
set autowrite                          " Write a modified buffer on each :next , ...
set backspace=indent,eol,start         " Backspacing over everything in insert mode
set clipboard=unnamed
set colorcolumn=100                    " and give me a colored column
set expandtab                          " Make vim use spaces and not tabs
set formatoptions=tc                   " wrap text and comments using textwidth
set formatoptions+=r                   " continue comments when pressing ENTER in I mode
set formatoptions+=q                   " enable formatting of comments with gq
set formatoptions+=n                   " detect lists for formatting
set formatoptions+=b                   " auto-wrap in insert mode, and do not wrap old long lines
set hidden                             " Don't unload the buffer when we switch between them. Saves undo history
set history=200                        " Keep 200 lines of command line history
set laststatus=2                       " Always show status line
set listchars=tab:>.                   " A tab will be displayed as >...
set listchars+=trail:.                 " Trailing white spaces will be displayed as .
set mouse=a                            " Enable mouse usage (all modes) in terminals
set nobackup                           " Don't constantly write backup files
set noerrorbells                       " Don't beep
set nofoldenable
set noswapfile                         " Ain't nobody got time for swap files
set nowrap                             " Do not wrap lines
set number                             " Also show current absolute line
set relativenumber                     " Relative line numbers
set ruler                              " Show where you are
set shiftwidth=4                       " Number of spaces to use for each step of indent
set showcmd                            " Display incomplete commands in the bottom line of the screen
set smartcase                          " Case-sensitive search if caps are used
set tabstop=4                          " Number of spaces that a <Tab> counts for
set undodir=~/.vimdid                  " Permanent undo
set undofile
set undolevels=1000                    " Never can be too careful when it comes to undoing
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                           " show a navigable menu for tab completion
set wildmode=longest,list,full
set wildignore=log/**,node_modules/**,target/**,tmp/**,*~,*.png,*.jpg,*.gif,*.settings,*.min.js,*.swp,publish/*,intermediate/*

" ********************
" Shortcuts
" ********************
let mapleader = "\<space>"
nnoremap <leader><leader> <c-^>                         " Toggles between buffers
noremap <leader>l :Align
nnoremap <leader>a :Ag<space>
nnoremap <leader>b :CtrlPBuffer<CR>
noremap <leader>c :w !xsel -ib<cr><cr>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>  "Create new file next to current open one
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>g :G<CR>
nnoremap <leader>G :GitGutterToggle<CR>
nnoremap <leader>p :Gpush<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <leader>u :CtrlPMRUFiles<CR>                   " Open most-recently used files
nnoremap <leader>w :w<CR>                    
nnoremap <leader>x :q<CR>
nnoremap <leader>] :TagbarToggle<CR>
nnoremap <leader>, :call whitespace#strip_trailing()<CR>
set pastetoggle=<leader>z

" *********************
" Auto-commands
" *********************
autocmd BufRead,BufNewFile *.json set ft=javascript
autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md set spell
autocmd BufRead *.orig set readonly                     " Prevent accidental writes to buffers that shouldn't be edited

" Jump to last edit position on opening file
if has("autocmd")
  " https://stackoverflow.com/questions/31449496/vim-ignore-specifc-file-in-autocommand
  au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" *********************
" Plugin settings
" *********************
" LanguageClient
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

" Rust
" https://github.com/rust-lang/rust.vim/issues/192
let g:rustfmt_command = "rustfmt +nightly"
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'
let $RUST_SRC_PATH = systemlist("rustc --print sysroot")[0] . "/lib/rustlib/src/rust/src"

" CtrlP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_match_window = 'order:ttb,max:20'

" NERDTree
let g:NERDSpaceDelims=1

" GitGutter
let g:gitgutter_enabled = 0

" Silver Searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
