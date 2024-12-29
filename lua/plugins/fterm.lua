return {
    "numToStr/FTerm.nvim",
    config = function()
        require("FTerm").setup {
            cmd = os.getenv('SHELL') .. ' -l',
            border = 'double',
            dimensions  = {
                height = 0.9,
                width = 0.9,
            },
        }
    end
}
