local true_zen = require("true-zen")

true_zen.setup({
	modes = { -- configurations per mode
		ataraxis = {
			shade = "dark", -- if `dark` then dim the padding windows, otherwise if it's `light` it'll brighten said windows
			backdrop = 0, -- percentage by which padding windows should be dimmed/brightened. Must be a number between 0 and 1. Set to 0 to keep the same background color
			minimum_writing_area = { -- minimum size of main window
				width = 70,
				height = 44,
			},
			quit_untoggles = true, -- type :q or :qa to quit Ataraxis mode
			padding = { -- padding windows
				left = 52,
				right = 52,
				top = 0,
				bottom = 0,
			},
			callbacks = { -- run functions when opening/closing Ataraxis mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		},
		minimalist = {
			ignored_buf_types = { "nofile" }, -- save current options from any window except ones displaying these kinds of buffers
			options = { -- options to be disabled when entering Minimalist mode
				number = false,
				relativenumber = false,
				showtabline = 0,
				signcolumn = "no",
				statusline = "",
				cmdheight = 1,
				laststatus = 0,
				showcmd = false,
				showmode = false,
				ruler = false,
				numberwidth = 1
			},
			callbacks = { -- run functions when opening/closing Minimalist mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		},
		narrow = {
			--- change the style of the fold lines. Set it to:
			--- `informative`: to get nice pre-baked folds
			--- `invisible`: hide them
			--- function() end: pass a custom func with your fold lines. See :h foldtext
			folds_style = "informative",
			run_ataraxis = true, -- display narrowed text in a Ataraxis session
			callbacks = { -- run functions when opening/closing Narrow mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		},
		focus = {
			callbacks = { -- run functions when opening/closing Focus mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		}
	},
	integrations = {
		tmux = false, -- hide tmux status bar in (minimalist, ataraxis)
		kitty = { -- increment font size in Kitty. Note: you must set `allow_remote_control socket-only` and `listen_on unix:/tmp/kitty` in your personal config (ataraxis)
			enabled = false,
			font = "+3"
		},
		twilight = false, -- enable twilight (ataraxis)
		lualine = false -- hide nvim-lualine (ataraxis)
	},
})



--	ui = {
--		bottom = {
--			laststatus = 0,
--			ruler = false,
--			showmode = false,
--			showcmd = false,
--			cmdheight = 1,
--		},
--		top = {
--			showtabline = 0,
--		},
--		left = {
--			number = false,
--			relativenumber = false,
--			signcolumn = "no",
--		},
--	},
--	modes = {
--		ataraxis = {
--			left_padding = 5,
--			right_padding = 2,
--			top_padding = 2,
--			bottom_padding = 5,
--			ideal_writing_area_width = { 0 },
--			auto_padding = true,
--			keep_default_fold_fillchars = true,
--			custom_bg = { "none", "" },
--			bg_configuration = true,
--			quit = "untoggle",
--			ignore_floating_windows = false,
--			affected_higroups = {
--				NonText = true,
--				FoldColumn = true,
--				ColorColumn = true,
--				VertSplit = true,
--				StatusLine = true,
--				StatusLineNC = true,
--				SignColumn = true,
--			},
--		},
--		focus = {
--			margin_of_error = 5,
--			focus_method = "experimental",
--		},
--	},
--	integrations = {
--		vim_gitgutter = false,
--		galaxyline = false,
--		tmux = false,
--		gitsigns = false,
--		nvim_bufferline = false,
--		limelight = false,
--		twilight = false,
--		vim_airline = false,
--		vim_powerline = false,
--		vim_signify = false,
--		express_line = false,
--		lualine = false,
--		lightline = false,
--		feline = false,
--	},
--	misc = {
--		on_off_commands = false,
--		ui_elements_commands = false,
--		cursor_by_mode = false,
--	},
