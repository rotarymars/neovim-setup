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
vim.keymap.set('n', 'zo', require('ufo').openAllFolds)
vim.keymap.set('n', 'zc', require('ufo').closeAllFolds)

function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end
-- Use Tab for trigger completion with characters ahead and navigate
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
-- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
-- other plugins before putting this into your config
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keymaps.set("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keymaps.set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

