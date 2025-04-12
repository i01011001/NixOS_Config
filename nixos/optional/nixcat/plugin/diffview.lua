if not nixCats('general') then
	return
end


vim.keymap.set("n", "<leader>do", "<cmd>DiffviewOpen<CR>", { desc = 'diffview Open' })
vim.keymap.set("n", "<leader>dr", "<cmd>DiffviewRefresh<CR>", { desc = 'diffview Refresh' })
vim.keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>", { desc = 'diffview Close' })
vim.keymap.set("n", "<leader>dt", "<cmd>DiffviewToggleFiles<CR>", { desc = 'diffview toggle files' })
vim.keymap.set("n", "<leader>df", "<cmd>DiffviewFocusFiles<CR>", { desc = 'diffview focus files' })
