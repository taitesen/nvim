return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-fzy-native.nvim",
            "nvim-tree/nvim-web-devicons",
            "nvim-telescope/telescope-ui-select.nvim"
        },
        config = function()
            local actions = require('telescope.actions')
            local themes = require('telescope.themes')

            require('telescope').setup {
                defaults = themes.get_ivy {
                    winbled           = 10,
                    file_sorter       = require('telescope.sorters').get_fzy_sorter,
                    prompt_prefix     = " ",
                    selection_caret   = " ",
                    color_devicons    = true,
                    respect_gitignore = true,
                    sorting_strategy  = "ascending",
                    prompt_position   = "top",
                    scroll_strategy   = "cycle",
                    file_previewer    = require('telescope.previewers').vim_buffer_cat.new,
                    grep_previewer    = require('telescope.previewers').vim_buffer_vimgrep.new,
                    qflist_previewer  = require('telescope.previewers').vim_buffer_qflist.new,
                    mappings          = {
                        i = {
                            ["<C-x>"] = false,
                            ["<C-q>"] = actions.send_to_qflist,
                            ["<C-s>"] = actions.select_horizontal,
                        },
                        n = {
                            ["q"] = actions.close,
                        },
                    }
                },
                extensions = {
                    fzy_native = {
                        override_generic_sorter = false,
                        override_file_sorter = true,
                    },
                    fzf = {
                        fuzzy = true,                   -- false will only do exact matching
                        override_generic_sorter = true, -- override the generic sorter
                        override_file_sorter = true,    -- override the file sorter
                        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                        -- the default case_mode is "smart_case"
                    }
                },

                pickers = {
                    git_branches = {
                        mappings = {
                            i = {
                                ["<C-a>"] = false
                            }
                        }
                    },
                    buffers = {
                        theme = "dropdown",
                        sort_mru = true,
                        mappings = {
                            n = { ["<C-d>"] = actions.delete_buffer },
                        },
                        previewer = false,
                    },
                },
            }

            require("telescope").load_extension("git_worktree")
            require("telescope").load_extension("fzy_native")
            -- require("telescope").load_extension("harpoon")

            vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#18191a" })
            vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#18191a" })
            vim.keymap.set("n", "sf", ":lua require('telescope.builtin').find_files({ hidden = true })<CR>")
            vim.keymap.set("n", "<C-p>", ":lua require('telescope.builtin').git_files()<CR>")
            vim.keymap.set("n", "ss",
                ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For  ')})<CR>")
            vim.keymap.set("n", "sg", ":lua require('telescope.builtin').live_grep()<CR>")
            vim.keymap.set("n", "sb", ":lua require('telescope.builtin').buffers()<CR>")
            vim.keymap.set("n", "sz", ":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>")
            vim.keymap.set("n", "<leader>vh", ":Telescope help_tags<CR>")
            vim.keymap.set("n", "sc", "<cmd>Telescope grep_string<CR>")

            -- Grep the current highlighted selction
            vim.keymap.set("v", "ss",
                "\"gy<cmd>lua require(\"telescope.builtin\").grep_string({ search = vim.fn.getreg(\"g\") })<cr>")

            vim.keymap.set("n", "sr", function()
                require("telescope.builtin").find_files({
                    prompt_title = ".dotfiles",
                    cwd = os.getenv("HOME") .. "/.local/src",
                    hidden = true,
                })
            end)

            vim.keymap.set("n", "sn", function()
                require("telescope.builtin").find_files({
                    prompt_title = ".dotfiles",
                    cwd = os.getenv("HOME") .. "/.config/nvim",
                    hidden = true,
                })
            end)

            vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>")
            vim.keymap.set("n", "<leader>gc", ":Telescope git_commits<CR>")
        end,
    },
    {
        "ThePrimeagen/git-worktree.nvim",
        config = function()
            require("git-worktree").setup {}
            vim.keymap.set("n", "<leader>gw",
                ":lua require('telescope').extensions.git_worktree.git_worktrees({ layout_config = { width = 0.5, height = 0.5 }})<CR>")
            vim.keymap.set("n", "<leader>gm",
                ":lua require('telescope').extensions.git_worktree.create_git_worktree({ layout_config = { width = 0.5, height = 0.5 }})<CR>")
        end,
    },
}
