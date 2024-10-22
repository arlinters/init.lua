return {
    'terrortylor/nvim-comment',
    config = function()
        require('nvim_comment').setup({
        -- Should key mappings be created
        create_mappings = true,
        -- Normal mode mapping left hand side
        line_mapping = "<leader>cc",
        -- Visual/Operator mapping left hand side
        operator_mapping = "<leader>c",
        -- text object mapping, comment chunk,,
        comment_chunk_text_object = "<leader>ic"

        })

    end,
}
