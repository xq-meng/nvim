return {
    "stevearc/aerial.nvim",
    opts = {
        show_guides = true,
        attach_mode = "global",
        update_events = "TextChanged,InsertLeave",
        on_attach = function(bufnr) end,
        layout = {
            placement = "edge",
            min_width = 30,
            max_width = { 40, 0.2 },
            win_opts = {},
        },
        lsp = {
            diagnostics_trigger_update = false,
            update_when_errors = true,
            update_delay = 300,
        },
        guides = {
            mid_item = "├─",
            last_item = "└─",
            nested_top = "│ ",
            whitespace = "  ",
        },
        filter_kind = {
            "Module",
            "Struct",
            "Interface",
            "Class",
            "Constructor",
            "Enum",
            "Function",
            "Method",
        }
    },
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    }
}
