return {
    "mistricky/codesnap.nvim",
    build = "make",
    config = function()
        require("codesnap").setup({
            keys = {
                { "<leader>7", "<cmd>CodeSnap<cr>",          mode = "x", desc = "Save selected code snapshot into clipboard" },
                { "<leader>8", "<cmd>CodeSnapSave<cr>",      mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
                { "<leader>9", "<cmd>CodeSnapHighlight<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
                { "<leader>0", "<cmd>CodeSnapSaveHighlight<cr>",      mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
            },
            opts = {
                save_path = "~/Pictures/code",
                has_breadcrumbs = true,
                bg_theme = "bamboo", -- bamboo, sea, peach, grape, dusk, summer
                mac_window_bar = true,
                title = "CodeSnap.nvim",
                code_font_family = "Iosevka Nerd Font",
                watermark_font_family = "Pacifico",
                watermark = "taitesen.nvim",
                breadcrumbs_separator = "/",
                has_line_number = false,
                show_workspace = true,
                min_width = 0,
                bg_x_padding = 122,
                bg_y_padding = 82,
            },
        })
    end
}
