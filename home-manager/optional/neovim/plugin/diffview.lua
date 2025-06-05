vim.keymap.set("n", "<leader>do", "<cmd>DiffviewOpen<CR>", { desc = 'diffview Open' })
vim.keymap.set("n", "<leader>dr", "<cmd>DiffviewRefresh<CR>", { desc = 'diffview Refresh' })
vim.keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>", { desc = 'diffview Close' })
vim.keymap.set("n", "<leader>dt", "<cmd>DiffviewToggleFiles<CR>", { desc = 'diffview toggle files' })
vim.keymap.set("n", "<leader>df", "<cmd>DiffviewFocusFiles<CR>", { desc = 'diffview focus files' })
vim.keymap.set("n", "<leader>dhh", "<cmd>DiffviewFileHistory<CR>", {desc = "diff repo history"})
vim.keymap.set("n", "<leader>dhf", "<cmd>DiffviewFileHistory --follow %<CR>", {desc = "diffview file history"})
vim.keymap.set("n", "<leader>dhr", "<cmd>'<,'>DiffviewFileHistory --follow %<CR>", {desc = "diffview range history"})
vim.keymap.set("n", "<leader>dhl", "<cmd>.DiffviewFileHistory --follow %<CR>", {desc = "diffview line history"})

local function get_default_branch_name()
	local res = vim
		.system({ 'git', 'rev-parse', '--verify', 'main' }, { capture_output = true })
		:wait()
	return res.code == 0 and 'main' or 'master'
end

-- Diff against local master branch
vim.keymap.set(
	'n',
	',dhm',
	function() vim.cmd('DiffviewOpen ' .. get_default_branch_name()) end,
	{ desc = 'Diff against master' }
)

-- Diff against remote master branch
vim.keymap.set(
	'n',
	',dhM',
	function() vim.cmd('DiffviewOpen HEAD..origin/' .. get_default_branch_name()) end,
	{ desc = 'Diff against origin/master' }
)
