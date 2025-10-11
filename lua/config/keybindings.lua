-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = {
    noremap = true,
    silent = true,
}

local map = vim.api.nvim_set_keymap

-- escape
map('i', 'jk', '<ESC>', opt)

-- popup menu
map('n', '<C-f>', ':lua require(\'neopop\').show_menu()<CR>', opt)

-- terminal
map('n', '<C-t>', ':lua require(\'FTerm\').toggle()<CR>', opt)
map('t', '<C-t>', '<C-\\><C-n>:lua require(\'FTerm\').toggle()<CR>', opt)

-- window toggle
map('n', '<leader>h', '<C-w>h', opt)
map('n', '<leader>j', '<C-w>j', opt)
map('n', '<leader>k', '<C-w>k', opt)
map('n', '<leader>l', '<C-w>l', opt)

-- window split
map('n', '<leader>]', ':vsplit<CR>', opt)
map('n', '<leader>[', ':split<CR>', opt)

-- nvim-tree
map('n', '<leader>gg', ':NvimTreeFocus<CR> :NvimTreeRefresh<CR>', opt)
map('n', '<leader>gx', ':NvimTreeClose<CR>', opt)
map('n', '<leader>gf', ':AerialToggle<CR>', opt)

-- buffer line
map('n', '<leader>-', ':BufferLineCyclePrev<CR>', opt)
map('n', '<leader>=', ':BufferLineCycleNext<CR>', opt)
map('n', '<leader>bx', ':BufDel<CR>', opt)

-- nvim telescope lsp
map('n', '<leader>fr', ':Telescope lsp_references<CR>', opt)
map('n', '<leader>fi', ':Telescope lsp_implementations<CR>', opt)
map('n', '<leader>fd', ':Telescope lsp_definitions<CR>', opt)
map('n', '<leader>ff', ':Telescope find_files<CR>', opt)
map('n', '<leader>fn', ':lua require(\'telescope.builtin\').lsp_document_symbols({ symbols = {"function", "class"}})<CR>', opt)
map('n', '<leader>fg', ':Telescope git_status<CR>', opt)

-- diagnostic
map('n', '<leader>go', ':lua vim.diagnostic.open_float()<CR>', opt)

-- wrapping.nvim
map('n', '<leader>ws', ':ToggleWrapMode<CR>', opt)

-- copy and past with system clipboard
map('n', '<leader>yy', '"+yy', opt)
map('v', '<leader>yy', '"+y', opt)
map('n', '<leader>pp', '"+p', opt)
