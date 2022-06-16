return require('packer').startup(function()
    -- Packer manage itself.
    use 'wbthomason/packer.nvim'
    -- Theme
    use 'navarasu/onedark.nvim'
    -- File tree
    use {
        'kyazdani42/nvim-tree.lua',
        -- optional, for file icon
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- Buffer line
    use {
        'akinsho/bufferline.nvim',
        -- optional, for file icon
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- tree sitter
    use {
        'nvim-treesitter/nvim-treesitter'
    }
    -- lsp
    use {
        'neovim/nvim-lspconfig', 
        'williamboman/nvim-lsp-installer'
    }
    -- complete
    use {
        'jayli/vim-easycomplete',
        'SirVer/ultisnips'
    }
end)
