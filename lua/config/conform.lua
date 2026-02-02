local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		javascript = { "eslint_d", "prettier" },
		typescript = { "eslint_d", "prettier" },
		javascriptreact = { "eslint_d", "prettier" },
		typescriptreact = { "eslint_d", "prettier" },
		tsx = { "eslint_d", "prettier" },
		json = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		markdown = { "prettier" },
		lua = { "stylua" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function(args)
		local bufnr = args.buf
		local name = vim.api.nvim_buf_get_name(bufnr)

		if vim.bo[bufnr].buftype ~= "" then
			return
		end
		if name:match("^oil://") then
			return
		end

		conform.format({
			bufnr = bufnr,
			lsp_fallback = false,
			timeout_ms = 500,
		})
	end,
})
