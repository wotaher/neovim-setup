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
		"stevearc/conform.nvim",
		opts = {},
	},
}
