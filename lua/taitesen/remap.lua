vim.g.mapleader = " "
vim.keymap.set("n", "<C-n>", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", ";f", vim.lsp.buf.format)

vim.keymap.set("n", "sj", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "sk", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "H", "<cmd>bprev<CR>")
vim.keymap.set("n", "L", "<cmd>bnext<CR>")
vim.keymap.set("n", "X", "<cmd>bd<CR>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>ee", function()
    vim.fn.feedkeys(":!$HOME/Vault/script/", "n")
end)
vim.keymap.set("n", "<leader>vv", "<cmd>badd $HOME/Vault/script/<CR>")
vim.keymap.set("n", "<leader>co", "<cmd>e $HOME/.config/nvim/lua/taitesen/remap.lua<CR>")
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", ";t", ":Telescope ")

vim.keymap.set("n", "<C-w>", ":WitSearchWiki ")
vim.keymap.set("n", "<C-p>", ":WitSearch ")

vim.keymap.set("v", "<C-p>", ":WitSearchVisual<CR>")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
vim.keymap.set("n", "<leader>rr", ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
vim.keymap.set("n", "<leader>ra", ':lua require("harpoon.mark").add_file()<CR>')
vim.keymap.set("n", "<leader>1", ':lua require("harpoon.ui").nav_file(1)<CR>')
vim.keymap.set("n", "<leader>2", ':lua require("harpoon.ui").nav_file(2)<CR>')
vim.keymap.set("n", "<leader>3", ':lua require("harpoon.ui").nav_file(3)<CR>')
vim.keymap.set("n", "<leader>4", ':lua require("harpoon.ui").nav_file(4)<CR>')

vim.keymap.set("n", "<leader>hello", ':lua require("taitesen.raz").setup()<CR>')
