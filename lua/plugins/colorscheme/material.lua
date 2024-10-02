local material = require("material")

material.setup({
  plugins = {
    "dashboard",
    "indent-blankline",
    "nvim-cmp",
    "nvim-tree",
    "telescope",
  },
  disable = {
    colored_cursor = true,
  },
  high_visibility = {
    darker = true,
  },
  lualine_style = "stealth",
})

vim.g.material_style = "deep ocean"
