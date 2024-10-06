return {
    "mistricky/codesnap.nvim",
    build = "make build_generator",
    opts = {
        save_path = "~/Pictures/code",
        has_breadcrumbs = true,
        bg_theme = "peach", -- bamboo, sea, peach, grape, dusk, summer
        mac_window_bar = true,
        title = "Codesnap.nvim",
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
}
