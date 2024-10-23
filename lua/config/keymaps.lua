-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

keymaps = vim.keymap

keymaps.set("i", "<C-y>", function()
  require("neocodeium").accept()
end)
keymaps.set("i", "<C-j>", function()
  require("neocodeium").cycle(1)
end)
keymaps.set("i", "<C-k>", function()
  require("neocodeium").cycle(-1)
end)
keymaps.set("i", "<C-a>", function()
  require("neocodeium").accept_line()
end)

keymaps.set("n", "diff", function()
  require("diffview").open({})
end)

keymaps.set("t", "<C-\\>", [[<C-\><C-n>]])

keymaps.set("n", "<C-f>", function()
  require("telescope.builtin").find_files()
end)

keymaps.set("n", "<C-g>", function()
  require("telescope.builtin").live_grep()
end)

keymaps.set("n", "<C-b>", function()
  require("telescope.builtin").buffers()
end)

vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
vim.keymap.set('n', 'O', require('ufo').openAllFolds)
vim.keymap.set('n', 'C', require('ufo').closeAllFolds)

