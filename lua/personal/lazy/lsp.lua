-- LSP packages
return {
    {'williamboman/mason.nvim', opts = {}},
    {'williamboman/mason-lspconfig.nvim',
    dependencies = {"VonHeikemen/lsp-zero.nvim"},
},
    {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x'
    },
    {'neovim/nvim-lspconfig'}, -- Completion
    {'hrsh7th/cmp-nvim-lsp',
},
    {'hrsh7th/nvim-cmp'}, -- Snippets
    {
        'L3MON4D3/LuaSnip',
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
    }
}
