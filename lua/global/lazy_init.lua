local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
<<<<<<<< HEAD:lua/personal/lazy_init.lua
	spec = "personal.lazy"
========
	spec = {
    {import="personal.lazy"},
    {import="workspace.lazy"},
  }
>>>>>>>> 280d26e (update layout):lua/global/lazy_init.lua
})


