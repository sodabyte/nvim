return {
  "nvim-treesitter/nvim-treesitter",
  module = true,
  event = {
    "BufReadPost", "BufNewFile"
  },
  dependencies = {
    "mrjones2014/nvim-ts-rainbow",
    "windwp/nvim-ts-autotag"
  },
  cmd = {
    "TSInstall",
    "TSInstallInfo",
    "TSUpdate",
    "TSBufEnable",
    "TSBufDisable",
    "TSEnable",
    "TSDisable",
    "TSModuleInfo",
  },
  build = ":TSUpdate",

  config = function()
  local configs = require "nvim-treesitter.configs"
    configs.setup {
      ensure_installed = {
        "html",
        "css",
        "javascript",
        "python",
        "bash",
        "lua",
        "json",
        "c",
        "c_sharp",
        "java",
        "rust",
    },
      highlight = {
        enable = true, -- False will disable the whole extension
        disable = "", -- List of language that will be disabled
    },
      autopairs = {
      enable = true,
    },
      indent = {
        enable = true,
        disable = {}
    },
      autotag = {
        enable = true,
    },
  }
  end
}
