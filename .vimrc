set nocompatible
filetype off

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
colorscheme molokai
set number
set laststatus=2
syntax on
