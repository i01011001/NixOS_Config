
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
        cmake= {"cmake-format"};

		-- templ = { "templ" },
		-- javascript = { { "prettierd", "prettier" } },
	},
})

vim.keymap.set({ "n", "v" }, "<leader>FF", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	})
end, { desc = "[F]ormat [F]ile" })

