require("nvim-treesitter.configs").setup({
	parser_install_dir = "/home/i01011001/.local/share/nvim",
	-- ensure_installed = { "markdown", "markdown_inline" },
	highlight = {
		enable = true,
		disable = function(lang, buf)
			local max_filesize = 100 * 1024 -- 100 KB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,
	},

	auto_install = false,
	additional_vim_regex_highlighting = true,

})
