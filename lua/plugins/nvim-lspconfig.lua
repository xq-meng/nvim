return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.config('clangd', {})
        vim.lsp.config('pylsp', {
            settings = {
                pylsp = {
                    plugins = {
                        pycodestyle = {
                            ignore = {'W391', 'E501'},
                        }
                    }
                }
            }
        })
    end
}
