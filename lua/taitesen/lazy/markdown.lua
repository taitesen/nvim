return {
    {
        "MeanderingProgrammer/markdown.nvim",
        main = "render-markdown",
        opts = {},
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
}
