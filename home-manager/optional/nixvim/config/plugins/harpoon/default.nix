{pkgs, ...}: {
  programs.nixvim = {
    extraPlugins = [pkgs.vimPlugins.harpoon2];
    extraConfigLua = ''
      local harpoon = require("harpoon")

      -- REQUIRED
      harpoon:setup()
      -- REQUIRED

      vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, {desc = "Harpoon add"})
      vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "Harpoon list"})

      vim.keymap.set("n", "<leader>hj", function() harpoon:list():select(1) end, {desc = "Harpoon select 1"})
      vim.keymap.set("n", "<leader>hk", function() harpoon:list():select(2) end, {desc = "Harpoon select 2"})
      vim.keymap.set("n", "<leader>hl", function() harpoon:list():select(3) end, {desc = "Harpoon select 3"})
      vim.keymap.set("n", "<leader>h;", function() harpoon:list():select(4) end, {desc = "Harpoon select 4"})

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, {desc = "Harpoon prev"})
      vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end, {desc = "Harpoon next"})
    '';
  };
}
