-- hello is a stripped down version of goolord/alpha-nvim to improve startup time
local M = {}
function M.config()
    local hello = require("hello")
    local dashboard = require("hello.themes.dashboard")
    hello.setup(dashboard.opts)
    -- Disable folding on hello buffer:
    vim.cmd("autocmd FileType hello setlocal nofoldenable")
end
return M
