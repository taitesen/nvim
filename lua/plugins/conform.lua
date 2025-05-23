return {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                javascript = { "prettierd", "prettier", stop_after_first = true },
                json = { "prettierd", "prettier", stop_after_first = true },
                yml = { "prettierd", "prettier", stop_after_first = true },
                markdown = { "prettierd", "prettier", stop_after_first = true },
                python = { "ruff" },
                rust = { "rustfmt", lsp_format = "fallback" },
                c = { "clang_format" },
                cpp = { "clang_format" },
                sh = { "shfmt" },
            },

            formatters = {
                clang_format = {
                    prepend_args = {
                        "-style={ \
                        IndentWidth: 4, \
                        TabWidth: 4, \
                        UseTab: Never, \
                        AccessModifierOffset: 0, \
                        IndentAccessModifiers: true, \
                        PackConstructorInitializers: Never}",
                    },
                },
            },

        })
    end
}
