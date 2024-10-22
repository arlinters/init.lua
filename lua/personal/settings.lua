-- local g = vim.g
-- g.loaded_netrw = 1 -- Disable in favor of nvim-tree
-- g.loaded_netrwPlugin = 1 -- Disable in favor of nvim-tree

vim.api.nvim_command('filetype plugin on') -- Enable filetype plugin files for specific configs


local opt = vim.opt
opt.signcolumn = 'yes' -- Reserve space for diagnostic icons

--opt.completeopt = "preview"
opt.termguicolors = true
opt.hlsearch = false
opt.relativenumber = true
opt.breakindent = true
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = "yes"
opt.clipboard = "unnamedplus"
opt.timeoutlen = 300
opt.smartindent = true
opt.expandtab = true
opt.smarttab = true
opt.textwidth = 0
opt.autoindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.laststatus = 3 -- Global statusline
opt.scrollback = 100000
opt.scrolloff = 10
opt.showmode = false
