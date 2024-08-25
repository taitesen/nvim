 -- from raz.lua Custom colorscheme
 local colors = {
     bg = "#000000",
     fg = "#eeeeee",
     white = "#ffffff",
     light_gray = "#807d7d",
     green = "#7fc74e",
     yellow = "#f7e044",
     red = "#ff0000",
     gray = "#99a7a2",
     dark_gray = "#404040"
 }

 local function setup()
     vim.cmd("hi clear")

     if vim.fn.exists("syntax_on") then
         vim.cmd("syntax reset")
     end

     vim.o.background = "dark"
     vim.o.termguicolors = true

     local hi = function (group, opts)
         local command = {"hi", group }
         if opts.fg then
            table.insert(command, "guifg=" .. opts.fg)
         end
         if opts.bg then
            table.insert(command, "guibg=" .. opts.bg)
         end
         if opts.style then
            table.insert(command, "gui=" .. opts.style)
         end
         vim.cmd(table.concat(command, " "))
     end

     -- Define highlights
     hi("Normal", {fg = colors.fg, bg = colors.bg})
     hi("Comment", {fg = colors.dark_gray, style = "none"})
     hi("Constant", {fg = colors.light_gray, style = "none"})
     hi("String", {fg = colors.green, style = "none"})
     hi("Variable", {fg = colors.fg})
     hi("Function", {fg = colors.white, style = "none"})
     hi("Keyword", {fg = colors.yellow, style = "bold"})
     hi("Type", {fg = colors.gray, style = "none"})
     hi("Identifier", {fg = colors.fg})
     hi("Special", {fg = colors.gray})
     hi("Delimiter", {fg = colors.gray})
     hi("Operator", {fg = colors.light_gray, style = "none"})
     hi("CursorLineNr", {fg = colors.yellow, style = "bold"})
     hi("Cursor", {fg = colors.yellow})
     hi("Error", {fg = colors.red})
     hi("Warning", {fg = colors.red})
 end

 return {
     setup = setup
 }
