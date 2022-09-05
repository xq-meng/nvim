return require('packer').startup(function()
    -- Packer manage itself.
    use 'wbthomason/packer.nvim'
    -- Theme
    use 'navarasu/onedark.nvim'
    -- greeter
    use 'xq-meng/hello-nvim'
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
    -- complete
    use {
        'jayli/vim-easycomplete',
        'SirVer/ultisnips'
    }
    -- terminal
    use {
        'skywind3000/vim-terminal-help'
    }
    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }
    -- tidy.nvim
    use {
        'mcauley-penney/tidy.nvim'
    }
end)
