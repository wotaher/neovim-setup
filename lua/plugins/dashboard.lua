return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			" ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
			" ████╗  ██║██║   ██║██║████╗ ████║",
			" ██╔██╗ ██║██║   ██║██║██╔████╔██║",
			" ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
			" ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
			" ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "󰈞  Find file", "<leader>ff"),
			dashboard.button("p", "  Projects", "<leader>fp"),
			dashboard.button("r", "  Recent files", "<leader>fr"),
			dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("q", "󰅚  Quit", ":qa<CR>"),
		}

		alpha.setup(dashboard.config)
	end,
}
