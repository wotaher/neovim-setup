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
			dashboard.button("f", "󰈞  Find file", "<cmd>Telescope find_files<CR>"),
			dashboard.button("p", "  Projects", "<cmd>Telescope projects<CR>"),
			dashboard.button("r", "  Recent files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("n", "  New file", "<cmd>ene <BAR> startinsert<CR>"),
			dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
		}

		alpha.setup(dashboard.config)
	end,
}
