-- leader key
vim.g.mapleader = ' '

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
map('n', '<leader>gg', ':NvimTreeFocus<CR> :NvimTreeRefresh<CR>', opt)
map('n', '<leader>gx', ':NvimTreeClose<CR>', opt)

-- buffer line
map('n', '<leader>bh', ':BufferLineCyclePrev<CR>', opt)
map('n', '<leader>bl', ':BufferLineCycleNext<CR>', opt)
map('n', '<leader>bb', ':BufferLineCycleNext<CR>', opt)
map('n', '<leader>bx', ':BufferLineCloseRight<CR> :BufferLineCloseLeft<CR>', opt)

-- nvim telescope lsp
map('n', '<leader>tr', ':Telescope lsp_references<CR>', opt)
map('n', '<leader>tf', ':Telescope find_files<CR>', opt)

-- wrapping.nvim
map('n', '<leader>ws', ':ToggleWrapMode<CR>', opt)
