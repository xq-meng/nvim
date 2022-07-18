-- leader key
vim.g.mapleader = '`'

local opt = {
    noremap = true,
    silent = true,
}

local map = vim.api.nvim_set_keymap

-- escape
map('i', 'jk', '<ESC>', opt)

-- window toggle
map('n', '<leader>h', '<C-w>h', opt)
map('n', '<leader>r', '<C-w>j', opt)
map('n', '<leader>k', '<C-w>k', opt)
map('n', '<leader>l', '<C-w>l', opt)

-- nvim-tree
map('n', '<C-g>', ':NvimTreeFocus<CR> :NvimTreeRefresh<CR>', opt)
map('n', '<leader><C-g>', ':NvimTreeClose<CR>', opt)

-- buffer line
map('n', '<C-h>', ':BufferLineCyclePrev<CR>', opt)
map('n', '<C-l>', ':BufferLineCycleNext<CR>', opt)

-- nvim telescope lsp
map('n', 'ld', ':Telescope lsp_definitions<CR>', opt)
map('n', 'li', ':Telescope lsp_implementations<CR>', opt)
map('n', 'lr', ':Telescope lsp_references<CR>', opt)
