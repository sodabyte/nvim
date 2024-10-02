return {
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require("telescope")
      local builtin = require('telescope.builtin')
      local set = vim.keymap.set

      set('n', '<leader>gc', builtin.git_commits, {})
      set('n', '<leader>ch', builtin.colorscheme, {})
      set('n', '<leader>ff', builtin.find_files, {})
      set('n', '<leader>fg', builtin.live_grep, {})
      set('n', '<leader>fb', builtin.buffers, {})
      set('n', '<leader>fh', builtin.help_tags, {})
      telescope.setup({})
    end,
  },
}
