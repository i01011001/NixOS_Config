langs = {
    "pyright",
    "clangd",
    "gopls",
    "nixd",
    "marksman",
    "lua_ls",
    "ts_ls",
    "cssls",
    "html",
    "jsonls",
    "qmlls",
    "cmake",
}

for _, lang in pairs(langs) do
    vim.lsp.enable(lang)
end

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

-- vim.keymap.set("n", "K",  vim.lsp.buf.hover , { desc = "Hover Documentation" })
-- vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, { desc = "Hover diagnostic" })

vim.keymap.set("n", "K", function() vim.lsp.buf.hover({ border = "rounded"}) end, { desc = "Hover Documentation" })
vim.keymap.set("n", "<space>e", function() vim.diagnostic.open_float({ border = "rounded" }) end, { desc = "Hover Documentation" })
