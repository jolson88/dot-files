" https://dane-bulat.medium.com/how-to-turn-vim-into-a-lightweight-ide-6185e0f47b79
" https://dane-bulat.medium.com/vim-setting-up-a-build-system-and-code-completion-for-c-and-c-eb263c0a19a1

set nocompatible
filetype off

" Bundles
" To remove plugin, comment it out and run :PluginClean in vi
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/plugged')

Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'cocopon/iceberg.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'preservim/tagbar'
Plugin 'dyng/ctrlsf.vim'
Plugin 'derekwyatt/vim-fswitch'

call vundle#end()
filetype plugin indent on

" Various vim options
set nu
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set splitbelow
set mouse=a

" Coloring
set background=dark
colorscheme torte
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" NERDtree
let NERDTreeShowBookmarks=1   " Show the bookmarks table
let NERDTreeShowHidden=1      " Show hidden files
let NERDTreeShowLineNumbers=0 " Hide line numbers
let NERDTreeMinimalMenu=1     " Use the minimal menu (m)
let NERDTreeWinSize=31        " Set panel width to 31 columns

" CTags
let g:tagbar_autofocus=1
let g:tagbar_autoshowtag=1
let g:tagbar_position='botright vertical'

" Search (enter :noh to turn off highlighting)
set incsearch
set hlsearch
let g:ctrlsf_backend = 'ack'
let g:ctrlsf_auto_close = { "normal":0, "compact":0  }  " Auto close the results panel when opening a file
let g:ctrlsf_auto_focus = { "at":"start"  }             " Immediately switch focus to the search window
let g:ctrlsf_auto_preview = 0                           " Don't open the preview window automatically
let g:ctrlsf_case_sensitive = 'smart'                   " Use the smart case sensitivity search scheme
let g:ctrlsf_default_view = 'normal'                    " Normal mode, not compact mode
let g:ctrlsf_regex_pattern = 0                         " Use absoulte search by default
let g:ctrlsf_position = 'right'                         " Position of the search window
let g:ctrlsf_winsize = '46'                             " Width or height of search window
let g:ctrlsf_default_root = 'cwd'                       " Search from the current working directory

" C Language settings
au! BufEnter *.cpp let b:fswitchdst = 'hpp,h'
au! BufEnter *.h let b:fswitchdst = 'cpp,c'

" Key commands
let g:AutoPairsShortcutToggle = '<C-P>'
nmap <C-G> :NERDTreeToggle<CR>
nmap <C-C> :TagbarToggle<CR>
nmap <C-F>f <Plug>CtrlSFPrompt
xmap <C-F>f <Plug>CtrlSFVwordPath
xmap <C-F>F <Plug>CtrlSFVwordExec
nmap <C-F>n <Plug>CtrlSFCwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
nmap <C-Z> :vsplit <bar> :wincmd l <bar> :FSRight<CR>
