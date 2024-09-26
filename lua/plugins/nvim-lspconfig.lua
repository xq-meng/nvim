return {
    "neovim/nvim-lspconfig",
    config = function()
        require('lspconfig').clangd.setup{}
        require('lspconfig').pylsp.setup{
            settings = {
                pylsp = {
                    plugins = {
                        pycodestyle = {
                            ignore = {'W391', 'E501'},
                        }
                    }
                }
            }
        }
    end
}
