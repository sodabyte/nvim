return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("plugins.colorscheme.catppuccin")
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("plugins.colorscheme.rose-pine")
    end,
  },
  {
    "marko-cerovac/material.nvim",
    config = function()
      require("plugins.colorscheme.material")
    end,
  },
}
