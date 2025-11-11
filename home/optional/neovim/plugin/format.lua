local conform = require("conform")
conform.setup({
	formatters_by_ft = {
		-- core
		lua = { "stylua" },
		c = { "clang-format" },
		nix = { "alejandra" },

		-- extras
		json = { "jq" },
		yaml = { "yamlfmt" },
		python = { "isort", "black" },
		toml = { "taplo" },
		markdown = { "prettier" },
		sh = { "shfmt" },
		cmake = { "cmake-format" },
		rust = { "rustfmt" },
	},

})

conform.formatters["cmake-format"] = {
  command = "cmake-format",   -- your installed executable
  args = { "-" },             -- read from stdin
  stdin = true,
}

vim.keymap.set({ "n", "v" }, "<leader>FF", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	})
end, { desc = "[F]ormat [F]ile" })
