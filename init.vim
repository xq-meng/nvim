" basic settings.
lua require('basic')

" plugin management.
lua require('plugins')

" key mapping
lua require('keybindings')

" atom one dark theme.
lua require('onedark').load()

" aleph-nvim greeting page
lua require('plugin-config/hello-nvim').config()

" nvim tree.
lua require('plugin-config/nvim-tree')

" bufferline
lua require('plugin-config/bufferline')

" nvim treesitter
lua require('plugin-config/nvim-treesitter')

" vim-terminal-help
lua require('plugin-config/vim-terminal-help')

" tidy.nvim
lua require('plugin-config/tidy-nvim')

" vim-easycomplete
lua require('plugin-config/vim-easycomplete')
