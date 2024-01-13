return {
    {
        'vimwiki/vimwiki',
        init = function()
            vim.g.vimwiki_list = {{path = '~/vimwiki', syntax = 'markdown', ext = '.md'}}
            -- This line ensures that the tab completion works
            vim.g.vimwiki_key_mappings = { table_mappings = 0 }
        end,
    },
}
