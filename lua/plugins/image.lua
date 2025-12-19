return {
  {
    "3rd/image.nvim",
    build = false, -- disables building the rock
    opts = {
      processor = "magick_cli", -- use ImageMagick CLI
    },
  },
}
