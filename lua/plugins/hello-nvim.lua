return {
    "xq-meng/hello-nvim",
    config = function()
        require("hello").setup(require("hello.themes.dashboard").opts)
    end
}
