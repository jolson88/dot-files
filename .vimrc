set nocompatible
filetype off

set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself.
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'crusoexia/vim-javascript-lib'

" Color schemes
Plugin 'tomasr/molokai'
Plugin 'crusoexia/vim-monokai'
Plugin 'flazz/vim-colorschemes'

" Required, plugins available after.
call vundle#end()
filetype plugin indent on

colorscheme monokai
set number
set laststatus=2
syntax on
let g:monokai_italic = 1
