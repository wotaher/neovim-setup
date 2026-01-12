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
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		cmd = "Telescope",
		config = function()
			require("telescope").setup({
				defaults = {
					prompt_prefix = "   ",
					selection_caret = "❯ ",
					path_display = { "smart" },
					layout_config = {
						horizontal = {
							preview_width = 0.55,
						},
					},
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		config = function()
			require("telescope").load_extension("fzf")
		end,
	},
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("oil").setup({
				default_file_explorer = true,
				view_options = {
					show_hidden = true,
				},
			})
		end,
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
	},
}
