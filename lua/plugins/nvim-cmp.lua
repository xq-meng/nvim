local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-vsnip",
        "hrsh7th/vim-vsnip"
    },
    config = function()
        require("cmp").setup{
            snippet = {
                expand = function(args)
                    vim.fn["vsnip#anonymous"](args.body)
                end,
            },
            mapping = require("cmp").mapping.preset.insert({
                ['<C-K>'] = require("cmp").mapping.scroll_docs(-4),
                ['<C-J>'] = require("cmp").mapping.scroll_docs(4),
                ['<C-k>'] = require("cmp").mapping.select_prev_item(),
                ['<C-j>'] = require("cmp").mapping.select_next_item(),
                ['<CR>'] = require("cmp").mapping.confirm({ select = true }),
                ["<Tab>"] = require("cmp").mapping(function(fallback)
                    if require("cmp").visible() then
                        require("cmp").select_next_item()
                    elseif has_words_before() then
                        require("cmp").complete()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            }),
            formatting = {
                fields = { 'abbr', 'menu' },
                format = function(entry, vim_item)
                    vim_item.menu = ({
                        nvim_lsp = '[Lsp]',
                        buffer = '[File]',
                        path = '[Path]',
                    })[entry.source.name]
                    return vim_item
                end,
            },
            sources = require("cmp").config.sources({
                { name = 'nvim_lsp' },    -- For nvim-lsp
                { name = 'vsnip' },       -- For vsnip users
                { name = 'buffer' },      -- For buffer word completion
                { name = 'path' },        -- For path completion
            })
    }
    end
}
