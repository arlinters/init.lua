local lsp = require('lsp-zero')
local utils = require("global.utils")
local lsp_helper = utils.require_if_exists('workspace.lsp_helper')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
  if lsp_helper then
    lsp_helper.add_workspace_folders()
  end
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'jdtls', 'kotlin_language_server', 'tsserver', 'lua_ls', 'rust_analyzer'},
  handlers = {
    lsp.default_setup,
    lua_ls = function()
      local lua_opts = lsp.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  },
})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
  },
  formatting = lsp.cmp_format(),
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})
