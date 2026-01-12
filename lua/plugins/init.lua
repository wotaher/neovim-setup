return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
	},
	{
		"neovim/nvim-lspconfig",
	},
	{
		"williamboman/mason.nvim",
		config = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"ts_ls",
					"html",
					"cssls",
					"lua_ls",
					"eslint",
				},
			})
		end,
	},
	{
		"saghen/blink.cmp",
		event = "InsertEnter",
		version = "1.*",
		opts = {
			keymap = {
				preset = "default",
			},
			completion = {
				keyword_length = 2,
				menu = {
					border = "rounded",
				},
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 300,
				},
			},
			sources = {
				default = {
					"lsp",
					"snippets",
					"path",
					-- "buffer",
				},
			},
			fuzzy = {
				implementation = "prefer_rust",
			},
		},
	},
	{
		"rafamadriz/friendly-snippets",
		lazy = true,
	},
	{
		"zbirenbaum/copilot.lua",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
					enabled = true,
					auto_trigger = true, -- ghost text automatycznie
					keymap = {
						accept = "<M-l>", -- Alt+l
						next = "<M-]>",
						prev = "<M-[>",
						dismiss = "<C-]>",
					},
				},
				panel = {
					enabled = false, -- nie otwieramy panelu
				},
			})
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = {},
	},
}
