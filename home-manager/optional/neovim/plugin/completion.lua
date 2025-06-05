require("blink.cmp").setup({
	-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
	-- See :h blink-cmp-config-keymap for configuring keymaps
	keymap = { preset = "default" },
	appearance = {
		nerd_font_variant = "mono",
	},

	signature = {
		enabled = true,
		window = {
			border = "rounded",
		},
	},

	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	completion = {
		menu = {
			enabled = true,
			min_width = 10,
			max_height = 10,
			border = "rounded", -- Defaults to `vim.o.winborder` on nvim 0.11+

			winblend = 0,
			scrolloff = 2,
			scrollbar = false,
			-- Which directions to show the window,
			-- falling back to the next direction when there's not enough space
			direction_priority = { "s", "n" },

			-- Whether to automatically show the window when new completion items are available
			auto_show = true,
			draw = {
				columns = {
					{ "label" },
					{ "kind" },
				},
				--treesitter = { "lsp" },
			},

			-- Screen coordinates of the command line
			cmdline_position = function()
				if vim.g.ui_cmdline_pos ~= nil then
					local pos = vim.g.ui_cmdline_pos -- (1, 0)-indexed
					return { pos[1] - 1, pos[2] }
				end
				local height = (vim.o.cmdheight == 0) and 1 or vim.o.cmdheight
				return { vim.o.lines - height, 0 }
			end,
		},

		documentation = {
			auto_show = false,
			auto_show_delay_ms = 500,
			update_delay_ms = 50,
			treesitter_highlighting = true,
			draw = function(opts)
				opts.default_implementation()
			end,
			window = {
				min_width = 20,
				max_width = 80,
				max_height = 20,
				border = "rounded", -- Defaults to `vim.o.winborder` on nvim 0.11+ or 'padded' when not defined/<=0.10
				scrollbar = false,
			},
		},

		ghost_text = { enabled = true },
	},
})
