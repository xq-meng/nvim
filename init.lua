-- basic settings.
require('basic')

-- plugin management.
require('plugins')

-- key mapping
require('keybindings')

-- lsp
require('lsp')
require('plugin-config/nvim-lspconfig')

-- atom one dark theme.
require('onedark').load()

-- aleph-nvim greeting page
require('plugin-config/hello-nvim').config()

-- nvim tree.
require('plugin-config/nvim-tree')

-- bufferline
require('plugin-config/bufferline')

-- nvim treesitter
require('plugin-config/nvim-treesitter')

-- vim-terminal-help
require('plugin-config/vim-terminal-help')

-- tidy.nvim
require('plugin-config/tidy-nvim')

-- vim-easycomplete
require('plugin-config/vim-easycomplete')

-- nvim-lastplace
require('plugin-config/nvim-lastplace')

-- nvim-cmp
require('plugin-config/nvim-cmp')
