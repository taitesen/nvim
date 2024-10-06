return {
    'krivahtoo/silicon.nvim',
    build = './install.sh',
    config = function()
        require('silicon').setup({
            font = 'Iosevka Nerd Font Propo=19',
            theme = 'TwoDark',
            background = '#87f',
            line_number = true,
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
        })
    end
}
