vim.opt.guicursor = ""

vim.opt.path:append("**")
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.virtualedit = "block"

vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.background = "dark"

-- neovide configuration
if vim.g.neovide then
vim.g.neovide_transparency = 0.7
vim.g.transparency = 0.9
vim.g.neovide_background_color = "#000000"
vim.g.neovide_refresh_rate = 90
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.o.guifont = "JetBrainsMono Nerd Font:h10"
vim.g.neovide_padding_top = 10
vim.g.neovide_padding_bottom = 10
vim.g.neovide_padding_right = 10
vim.g.neovide_padding_left = 10
end

