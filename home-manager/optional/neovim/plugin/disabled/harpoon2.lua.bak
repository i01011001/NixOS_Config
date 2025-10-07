local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, {desc = "Harpoon add"})
vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "Harpoon list"})

vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end, {desc = "Harpoon select 1"})
vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end, {desc = "Harpoon select 2"})
vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end, {desc = "Harpoon select 3"})
vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end, {desc = "Harpoon select 4"})
vim.keymap.set("n", "<leader>h5", function() harpoon:list():select(5) end, {desc = "Harpoon select 5"})
vim.keymap.set("n", "<leader>h6", function() harpoon:list():select(6) end, {desc = "Harpoon select 6"})
vim.keymap.set("n", "<leader>h7", function() harpoon:list():select(7) end, {desc = "Harpoon select 7"})
vim.keymap.set("n", "<leader>h8", function() harpoon:list():select(8) end, {desc = "Harpoon select 8"})
vim.keymap.set("n", "<leader>h9", function() harpoon:list():select(9) end, {desc = "Harpoon select 9"})
vim.keymap.set("n", "<leader>h0", function() harpoon:list():select(10) end, {desc = "Harpoon select 10"})

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, {desc = "Harpoon prev"})
vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end, {desc = "Harpoon next"})
