call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'nvim-tree/nvim-tree.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'

Plug 'ziglang/zig.vim'

call plug#end()

lua << EOF
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', {
    noremap = true
})
vim.keymap.set('n', '<C-o>', ':NvimTreeFindFileToggle<CR>', {
    noremap = true
})

require("nvim-tree").setup()
EOF
