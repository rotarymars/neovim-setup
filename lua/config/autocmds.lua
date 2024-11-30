-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

require('lspconfig').clangd.setup({
    cmd = { "clangd", "--header-insertion=never", "--completion-style=detailed" },
})

