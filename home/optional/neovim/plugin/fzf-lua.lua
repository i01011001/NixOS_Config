require("fzf-lua").setup({
	winopts = {
		fullscreen = true,
		preview = {
			vertical = "up:70%",
			layout = "vertical",
		-- 	scrollbar = false,
            border = "rounded",
		},
        border = "rounded",
	},
})

vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files <cr>", { desc = "FzfLua files" })
vim.keymap.set("n", "<leader>fc", "<cmd>FzfLua highlights <cr>", { desc = "FzfLua highlights" })
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua helptags <cr>", { desc = "FzfLua helptags" })
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep <cr>", { desc = "FzfLua live_grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers <cr>", { desc = "FzfLua buffers" })
vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua lsp_references <cr>", { desc = "FzfLua lsp_references" })
vim.keymap.set("n", "<leader>fR", "<cmd>FzfLua lsp_finder <cr>", { desc = "FzfLua lsp_finder" })
vim.keymap.set("n", "<leader>fk", "<cmd>FzfLua keymaps <cr>", { desc = "FzfLua keymaps" })
