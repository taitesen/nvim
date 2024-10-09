return {
    "krivahtoo/silicon.nvim",
    build = "./install.sh",
    config = function()
        require("silicon").setup {
            font = 'Iosevka Nerd Font=26',
            background = '#87f',
            theme = 'DarkNeon',
            line_number = false,
            pad_vert = 80,
            pad_horiz = 50,
            output = {
                path = "/home/taitesen/Pictures/code"
            },
            watermark = {
                text = ' @taitesen',
            },
            window_title = function()
                return vim.fn.fnamemodify(vim.fn.bufname(vim.fn.bufnr()), ':~:.')
            end,
        }
    end
}
