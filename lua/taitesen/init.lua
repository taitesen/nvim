require("taitesen.set")
require("taitesen.remap")
require("taitesen.lazy_init")
require("taitesen.lazy.markdown")

vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE", fg = "#aaaaaa" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE", fg = "#aaaaaa" })
vim.api.nvim_set_hl(0, "CustomColor", { bg = "#ebbcba", fg = "#000000" })

local augroup = vim.api.nvim_create_augroup
local taitesengroup = augroup('taitesen', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

vim.filetype.add({
    extension = {
        templ = 'templ',
    }
})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'CustomColor',
            timeout = 100,
        })
    end,
})

autocmd({ "BufWritePre" }, {
    group = taitesengroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

-- Map q to exit the command-line window
vim.api.nvim_create_autocmd('CmdwinEnter', {
    group = taitesengroup,
    pattern = "*",
    callback = function()
        vim.api.nvim_buf_set_keymap(0, 'n', 'q', ':quit<CR>', { noremap = true, silent = true })
    end
})

-- Do not auto comment new line
autocmd("BufEnter", {
    group = taitesengroup,
    pattern = "*",
    command = [[ set formatoptions-=cro ]],
})

autocmd('LspAttach', {
    group = taitesengroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", ";s", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", ";d", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", ";a", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", ";r", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", ";n", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", ";q", function() vim.diagnostic.setqflist() end, opts)
    end
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
