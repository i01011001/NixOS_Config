require("noice").setup({
	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
		progress = {
			enabled = false,
		},
		hover = {
			enabled = false,
		},
		signature = {
			enabled = false,
		},
		message = {
			enabled = false,
		},
		documentation = {
			view = "hover",
			opts = {
				lang = "markdown",
				replace = true,
				render = "plain", -- Use "plain" or "markdown" depending on preferred output
				format = { "{message}" },
				win_options = {
					concealcursor = "n",
					conceallevel = 3,
					wrap = true,
					linebreak = true,
					breakindent = true,
					foldenable = false,
				},
			},
		},
	},
	markdown = {
		hover = {
			-- Enable Treesitter for better markdown parsing
			enabled = true,
			treesitter = true,
			keys = false,
		},
	},
	health = {
		checker = true, -- Disable if you don't want health checks to run
	},
	presets = {
		bottom_search = true, -- use a classic bottom cmdline for search
		command_palette = false, -- position the cmdline and popupmenu together
		long_message_to_split = false, -- long messages will be sent to a split
		inc_rename = false, -- enables an input dialog for inc-rename.nvim
		lsp_doc_border = false, -- add a border to hover docs and signature help
	},
	cmdline = {
		enabled = false, -- enables the Noice cmdline UI
	},
	messages = {
		enabled = false, -- enables the Noice messages UI
	},
	popupmenu = {
		enabled = false, -- enables the Noice popupmenu UI
	},
})
