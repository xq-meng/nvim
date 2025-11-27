return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        local ok_cmp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
        if ok_cmp then
            capabilities = cmp_lsp.default_capabilities(capabilities)
        end

        vim.lsp.config("clangd", {
            capabilities = capabilities,
        })

        vim.lsp.config("pylsp", {
            capabilities = capabilities,
            settings = {
                pylsp = {
                    plugins = {
                        pycodestyle = {
                            ignore = { "W391", "E501" },
                        },
                    },
                },
            },
        })

        vim.lsp.enable("clangd")
        vim.lsp.enable("pylsp")
    end
}
