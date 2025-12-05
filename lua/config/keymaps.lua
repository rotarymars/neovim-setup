-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Live grep - search file contents
vim.keymap.set("n", "<leader>fw", function()
  require("fzf-lua").live_grep()
end, { noremap = true, silent = true, desc = "Grep (live)" })
