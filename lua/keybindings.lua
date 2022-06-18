local opt = {
    noremap = true,
    silent = true,
}

local map = vim.api.nvim_set_keymap

-- nvim-tree
map('n', '<C-g>', ':NvimTreeOpen<CR> :NvimTreeRefresh<CR>', opt)
map('n', '<leader><C-g>', ':NvimTreeClose<CR>', opt)

-- buffer line 
map('n', '<C-h>', ':BufferLineCyclePrev<CR>', opt)
map('n', '<C-l>', ':BufferLineCycleNext<CR>', opt)

-- nvim telescope lsp 
map('n', 'ld', ':Telescope lsp_definitions<CR>', opt)
map('n', 'li', ':Telescope lsp_implementations<CR>', opt)
map('n', 'lr', ':Telescope lsp_references<CR>', opt)
