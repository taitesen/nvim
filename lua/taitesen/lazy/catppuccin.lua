return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",     -- latte, frappe, macchiato, mocha
            background = {         -- :h background
                light = "latte",
                dark = "mocha",
            },
            transparent_background = true,     -- disables setting the background color.
            show_end_of_buffer = false,         -- shows the '~' characters after the end of buffers
            term_colors = true,                 -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = false,                -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.15,              -- percentage of the shade to apply to the inactive window
            },
            no_italic = false,                  -- Force no italic
            no_bold = false,                    -- Force no bold
            no_underline = false,               -- Force no underline
            styles = {                          -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" },        -- Change the style of comments
                conditionals = { "italic" },
                loops = {},
                functions = {},
                keywords = {},
                strings = { "italic" },
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
                -- miscs = {}, -- Uncomment to turn off hard-coded styles
            },
            color_overrides = {
                all = {
                    text = "#ffffff",
                },
                latte = {
                    base = "#ff0000",
                    mantle = "#242424",
                    crust = "#474747",
                },
                frappe = {},
                macchiato = {},
                mocha = {
                    base = "#000000",
                    mantle = "#010101",
                    crust = "#020202",
                },
            },
            custom_highlights = {},
            default_integrations = true,
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = false,
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
            },
        })
        -- vim.cmd.colorscheme("catppuccin")
    end
}
