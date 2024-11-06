vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", function() vim.cmd("Ex")end) -- Commented out in favor of nvim-tree
vim.keymap.set("n", "<leader><leader><Enter>", function() vim.cmd("so")end)
