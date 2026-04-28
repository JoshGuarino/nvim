return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
		}

		dashboard.section.header.opts.hl = "AlphaHeader"
		dashboard.section.buttons.val = {
			dashboard.button("f", "󰮗   Find file", ":Telescope find_files<CR>"),
			dashboard.button("e", "   File Explorer", ":NvimTreeToggle<CR>"),
			dashboard.button("r", "󱘞   Ripgrep", ":Telescope live_grep<CR>"),
			dashboard.button("q", "󰗼   Quit", ":qa<CR>"),
			dashboard.button("l", "󰒲   Lazy", ":Lazy<CR>"),
			dashboard.button("c", "   Check Health", ":checkhealth<CR>"),
			dashboard.button("m", "   Mason", ":Mason<CR>"),
			dashboard.button("t", "   Treesitter", ":TSManager<CR>"),
		}

		alpha.setup(dashboard.opts)
	end,
}
