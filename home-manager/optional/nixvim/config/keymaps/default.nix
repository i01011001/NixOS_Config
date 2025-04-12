{
  programs.nixvim = {
    globals.mapleader = " ";
    # extraConfigLua =  ''
    #     vim.keymap.set(“n”, “<leader>dt”, function()
    #     if vim.diagnostic.is_enabled() then
    #     vim.diagnostic.disable()
    #     else
    #     vim.diagnostic.enable()
    #     end
    #     end)
    #     '';
  };
}
