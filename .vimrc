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
Plugin 'godlygeek/tabular'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'edsono/vim-matchit'
Plugin 'elzr/vim-json'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-signify'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'rstacruz/sparkup'
Plugin 'marijnh/tern_for_vim'
Plugin 'scrooloose/nerdtree'

" Color schemes
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'

" Required, plugins available after.
call vundle#end()
filetype plugin indent on

colorscheme vibrantink
set number
set laststatus=2
