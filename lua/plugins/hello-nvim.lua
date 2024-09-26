return {
    "xq-meng/hello-nvim",
    dependencies = {
        'echasnovski/mini.icons',
    },
    config = function()
        require("hello").setup(require("hello.themes.dashboard").opts)
    end
}
