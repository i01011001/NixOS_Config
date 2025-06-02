if not nixCats('general') then
    return
end

vim.keymap.set("n", "<space>m", "<cmd><cr>", {desc =" Markdown Preview"})
