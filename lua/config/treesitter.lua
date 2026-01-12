vim.api.nvim_create_autocmd("FileType", {
	pattern = { "lua", "javascript", "typescript", "javascriptreact", "typescriptreact", "tsx", "json", "html", "css" },
	callback = function()
		vim.treesitter.start()
	end,
})

vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
