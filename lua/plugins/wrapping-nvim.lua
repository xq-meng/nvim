return {
    "andrewferrier/wrapping.nvim",
    config = function()
        require("wrapping").setup({
            create_keymaps = false,
            notify_on_switch = false,
        })
    end
}
