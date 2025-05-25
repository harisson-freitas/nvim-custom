local theme_selector = require("harry.theme_selector")

if theme_selector.active_theme == "tokyonight" then
	return {
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			local bg = "#011628"
			local bg_dark = "#011423"
			local bg_highlight = "#143652"
			local bg_search = "#0A64AC"
			local bg_visual = "#275378"
			local fg = "#CBE0F0"
			local fg_dark = "#B4D0E9"
			local fg_gutter = "#627E97"
			local border = "#547998"

			require("tokyonight").setup({
				style = "night",

				on_colors = function(colors)
					colors.bg = bg
					colors.bg_dark = bg_dark
					colors.bg_float = bg_dark
					colors.bg_highlight = bg_highlight
					colors.bg_popup = bg_dark
					colors.bg_search = bg_search
					colors.bg_sidebar = bg_dark
					colors.bg_statusline = bg_dark
					colors.bg_visual = bg_visual
					colors.border = border
					colors.fg = fg
					colors.fg_dark = fg_dark
					colors.fg_float = fg
					colors.fg_gutter = fg_gutter
					colors.fg_sidebar = fg_dark
				end,
			})

			vim.cmd("colorscheme tokyonight")
		end,
	}
elseif theme_selector.active_theme == "catppuccin" then
	return {
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({})
			vim.cmd("colorscheme catppuccin")
		end,
	}
elseif theme_selector.active_theme == "gruvbox" then
	return {
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({})
			vim.cmd("colorscheme gruvbox")
		end,
	}
elseif theme_selector.active_theme == "onedark" then
	return {
		"navarasu/onedark.nvim",
		priority = 1000,
		config = function()
			require("onedark").setup({})
			vim.cmd("colorscheme onedark")
		end,
	}
elseif theme_selector.active_theme == "kanagawa" then
	return {
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			require("kanagawa").setup({})
			vim.cmd("colorscheme kanagawa")
		end,
	}
elseif theme_selector.active_theme == "oxocarbon" then
	return {
		"nyoom-engineering/oxocarbon.nvim",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme oxocarbon")
		end,
	}
elseif theme_selector.active_theme == "rose-pine" then
	return {
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	}
elseif theme_selector.active_theme == "nightfox" then
	return {
		"EdenEast/nightfox.nvim",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme nightfox")
		end,
	}
end
