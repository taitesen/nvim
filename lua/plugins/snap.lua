return {
    "krivahtoo/silicon.nvim",
    build = "./install.sh",
    config = function()
        require("silicon").setup {
            font = 'IosevkaTerm Nerd Font=26',
            background = '#bbac9b',
            theme = 'gruvbox-dark',
            line_number = false,
            pad_vert = 80,
            pad_horiz = 50,
            window_controls = true,
            output = {
                path = "/home/taitesen/Pictures/code/"
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
