return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "ojroques/nvim-bufdel",
    },
    config = function()
        require("bufferline").setup {
            options = {
                -- nvim internal lsp
                diagnostics = "nvim_lsp",
                -- offset for nvim-tree
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left"
                    }
                }
            }
        }
    end
}
