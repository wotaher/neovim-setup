-- =========================
-- Global keymaps
-- =========================

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- =========================
-- Basic
-- =========================

-- Save / quit
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)
-- keymap("n", "<leader>Q", ":qa!<CR>", opt)

-- Clear search highlight
keymap("n", "<Esc>", ":nohlsearch<CR>", opts)

-- =========================
-- Buffers
-- =========================

keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprev<CR>", opts)
keymap("n", "<leader>bd", ":bd<CR>", opts)
keymap("n", "<leader>bb", ":ls<CR>", opts)

-- Switch to last buffer
keymap("n", "<leader><leader>", "<C-^>", opts)

-- =========================
-- Windows (splits)
-- =========================

keymap("n", "<leader>sv", ":vsplit<CR>", opts)
keymap("n", "<leader>sh", ":split<CR>", opts)

keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- Resize
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- =========================
-- Telescope
-- =========================

keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)

-- =========================
-- Terminal
-- =========================

keymap("n", "<leader>t", ":terminal<CR>", opts)
keymap("t", "<Esc>", "<C-\\><C-n>", opts)

-- =========================
-- Visual mode
-- =========================

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move selected lines
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, {
	desc = "Show diagnostic",
})

vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {
	desc = "Code Actions",
})

vim.keymap.set("n", "<leader>cf", function()
	vim.lsp.buf.code_action({
		apply = true,
		filter = function(action)
			return action.kind and action.kind:match("source.fixAll")
		end,
	})
end, { desc = "Fix All (ESLint)" })

vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>", {
	desc = "File explorer (Oil)",
})
