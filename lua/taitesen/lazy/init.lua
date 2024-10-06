return {

    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
    },

    "eandrju/cellular-automaton.nvim",
    {
        dir = '/home/taitesen/.local/src/config/yugem',
        lazy = true,
        priority = 1000,
        config = function()
            require('yugem').setup {}
        end,
        init = function()
            -- vim.cmd("colorscheme yugem")
        end
    },
    {
        'nvim-tree/nvim-web-devicons'
    }

}
