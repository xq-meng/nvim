return require('packer').startup(function()
    -- Packer manage itself.
    use {
        'wbthomason/packer.nvim'
    }
    -- Theme
    use {
        'navarasu/onedark.nvim'
    }
    -- greeter
    use {
        'xq-meng/hello-nvim'
    }
    -- file icon
    use {
        'kyazdani42/nvim-web-devicons'
    }
    -- File tree, requires 'kyazdani42/nvim-web-devicons' for icon display
    use {
        'kyazdani42/nvim-tree.lua',
    }
    -- Buffer line, requires 'kyazdani42/nvim-web-devicons' for icon display
    use {
        'akinsho/bufferline.nvim',
        'ojroques/nvim-bufdel'
    }
    -- tree sitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    -- lsp
    use {
        'neovim/nvim-lspconfig',
    }
    -- auto complete
    use {
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip'
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
        'xq-meng/tidy.nvim'
    }
    -- nvim-lastplace
    use {
        'ethanholz/nvim-lastplace'
    }
    -- wrapping.nvim
    use {
        "andrewferrier/wrapping.nvim",
    }
end)
