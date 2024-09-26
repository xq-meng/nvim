-- python provider
vim.g.python3_host_prog = "/usr/bin/python3"
-- utf-8
vim.g.encoding = "UTF-8"
vim.g.fileencoding = "UTF-8"
-- line number
vim.wo.number = true
vim.wo.relativenumber = true
-- ref line of width
vim.wo.colorcolumn = "120"
-- tabs
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.shiftround = true
-- expand
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
-- wrap
vim.o.wrap = true
-- increasing search
vim.o.incsearch = true
-- search highlight
vim.o.hlsearch = false
-- auto load
vim.o.autoread = true
-- mouse support
vim.o.mouse = "a"
-- split window
vim.o.splitbelow = true
vim.o.splitright = true
-- vim terminal 
vim.g.terminal_key = '<C-t>'
-- auto compelete
vim.g.completeopt = "menu, menuone, noselect, noinsert"
-- colors
vim.o.background = "dark"
-- fold
vim.o.foldlevelstart = 99
