local catppuccin = require("catppuccin")

catppuccin.setup({
  styles = {
    comments = {},
    conditionals = {},
  },
  integrations = {
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = {},
        hints = {},
        warnings = {},
        information = {},
      },
      underlines = {
        errors = {"undercurl"},
        hints = {"undercurl"},
        warnings = {"undercurl"},
        information = {"undercurl"},
      },
    },
    barbecue = {
      dim_dirname = true,
      bold_basename = false,
      dim_context = false,
    },
    indent_blankline = {
      enabled = true, colored_indent_levels = false
    },
    nvimtree = true,
    which_key = true,
    cmp = true,
    gitsigns = true,
    telescope = true,
    notify = true,
    mini = false,
  },
})
