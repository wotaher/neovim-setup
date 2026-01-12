vim.diagnostic.config({
	virtual_text = false,
	signs = false,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

-----------------------------------------------------------
-- Lua
-----------------------------------------------------------
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

vim.lsp.enable("lua_ls")

-----------------------------------------------------------
-- TypeScript / JavaScript
-----------------------------------------------------------
vim.lsp.enable("ts_ls")

-----------------------------------------------------------
-- HTML
-----------------------------------------------------------
vim.lsp.enable("html")

-----------------------------------------------------------
-- CSS
-----------------------------------------------------------
vim.lsp.enable("cssls")

-----------------------------------------------------------
-- ESLint
-----------------------------------------------------------
vim.lsp.config("eslint", {
	on_attach = function(_, bufnr)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			command = "EslintFixAll",
		})
	end,
})

vim.lsp.enable("eslint")
