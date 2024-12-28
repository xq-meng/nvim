return {
    "xq-meng/neopop.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "lewis6991/gitsigns.nvim",
    },
    config = function()
        require("neopop").setup()
    end
}
