return {
    'sbdchd/neoformat',
    config = function()
        vim.cmd("let g:neoformat_try_node_exe = 1")
    end
} -- Prettier formatting integration