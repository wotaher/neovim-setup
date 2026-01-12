-----------------------------------------------------------
-- BASIC OPTIONS (MUST BE FIRST)
-----------------------------------------------------------
vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-----------------------------------------------------------
-- BOOTSTRAP LAZY
-----------------------------------------------------------

require('config.keymap')
require("config.lazy")
require("config.treesitter")
