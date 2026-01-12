-----------------------------------------------------------
-- BASIC OPTIONS (MUST BE FIRST)
-----------------------------------------------------------
vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

-----------------------------------------------------------
-- BOOTSTRAP LAZY
-----------------------------------------------------------

require("config.keymap")
require("config.lazy")
require("config.treesitter")
require("config.conform")
require("config.lsp")
