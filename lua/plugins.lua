local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'tpope/vim-surround'

Plug 'airblade/vim-gitgutter'

Plug('neoclide/coc.nvim', {branch = 'release'})
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug('catppuccin/nvim', {as = 'catppuccin'})
Plug 'vim-test/vim-test'
Plug 'ctrlpvim/ctrlp.vim'
Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
Plug 'junegunn/fzf.vim'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})

vim.call('plug#end')

