vim.g.mapleader = " "
vim.g.maplocalleader = ","

local set = vim.keymap.set

-- Better up/down
set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move Lines
set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })


-- Add undo break-points
set("i", ",", ",<c-g>u")
set("i", ".", ".<c-g>u")
set("i", ";", ";<c-g>u")

-- Better indenting
set("v", "<", "<gv")
set("v", ">", ">gv")

-- Save file
set({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- New file
set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

-- Quit
set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

set("n", "<Esc>", "<Cmd>nohlsearch<CR>")

set("n", "<Leader>p", "<Cmd>Lazy<CR>", { desc = "Plugins" })
set("n", "<C-e>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- COMPILER

-- Open compiler
vim.api.nvim_set_keymap("n", "<F6>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })

-- Redo last selected option
vim.api.nvim_set_keymap("n", "<S-F6>",
     "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
  .. "<cmd>CompilerRedo<cr>",
 { noremap = true, silent = true })

-- Toggle compiler results
vim.api.nvim_set_keymap("n", "<S-F7>", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
