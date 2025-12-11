local M = {}

M.last_place = require('functions.nvim-lastplace').setup{
    lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
    lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
    lastplace_open_folds = true
}

M.resize_window = require('functions.resize-window')

return M
