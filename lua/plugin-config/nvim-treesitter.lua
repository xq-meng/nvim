require('nvim-treesitter.configs').setup {
    ensure_installed = {"c", "cpp", "lua", "python", "vim"},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    indent = {
        enable = true
    }
}
