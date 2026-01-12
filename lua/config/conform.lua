require("conform").setup({
	formatters_by_ft = {
		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		tsx = { "prettier" },
		json = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		markdown = { "prettier" },
		lua = { "stylua" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = false,
		filter = function(bufnr)
			if vim.bo[bufnr].buftype ~= "" then
				return false
			end
			if vim.api.nvim_buf_get_name(bufnr):match("^oil://") then
				return false
			end
			return true
		end,
	},
})
