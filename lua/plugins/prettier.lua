-- Format TypeScript/JavaScript with prettier on save (via conform.nvim).
return {
  -- map prettier to TS/JS filetypes
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },
      },
    },
  },
  -- make sure prettier is installed
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "prettier" } },
  },
}
