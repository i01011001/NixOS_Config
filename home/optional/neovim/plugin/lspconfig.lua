langs = {
	"pyright",
	"gopls",
	"nixd",
	"prettier",
	"marksman",
	"lua_ls",
	"tsserver",
	"cssls",
	"html",
	"jsonls",
	"qmlls",
	"cmake",
	"bashls",
	"rust_analyzer",
}

-- Custom setup for clangd to disable auto-includes
vim.lsp.enable("clangd", {
	cmd = { "clangd", "--header-insertion=never" },
})

for _, lang in pairs(langs) do
	vim.lsp.enable(lang)
end

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

vim.keymap.set("n", "K", function()
	vim.lsp.buf.hover({ border = "rounded" })
end, { desc = "Hover Documentation" })
vim.keymap.set("n", "<space>e", function()
	vim.diagnostic.open_float({ border = "rounded" })
end, { desc = "Hover Diagnostic" })
