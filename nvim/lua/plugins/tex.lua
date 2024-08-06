return {
    {
        'lervag/vimtex',
        init = function()
            vim.g.vimtex_view_method = 'skim'
            vim.opt.conceallevel = 2
            vim.g.Tex_IgnoreLevel = 7
            vim.g.vimtex_syntax_enabled = on
            vim.g.vimtex_compiler_engine = 'lualatex'
        end,
    },
    {
        'folke/zen-mode.nvim',
        opts = {
            window = {
                backdrop = 1, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
                -- height and width can be:
                -- * an absolute number of cells when > 1
                -- * a percentage of the width / height of the editor when <= 1
                -- * a function that returns the width or the height
                width = 200, -- width of the Zen window
                height = 1, -- height of the Zen window
                -- by default, no options are changed for the Zen window
                -- uncomment any of the options below, or add other vim.wo options you want to apply
                options = {
                  -- signcolumn = "no", -- disable signcolumn
                  number = false, -- disable number column
                  relativenumber = false, -- disable relative numbers
                  -- cursorline = false, -- disable cursorline
                  -- cursorcolumn = false, -- disable cursor column
                  -- foldcolumn = "0", -- disable fold column
                  -- list = false, -- disable whitespace characters
                },
              },
        }
    },
    {
        "toppair/peek.nvim",
        event = { "VeryLazy" },
        build = "deno task --quiet build:fast",
        config = function()
            require("peek").setup({filetype = { 'markdown', 'vimwiki' }})
            -- refer to `configuration to change defaults`
            vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
            vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
        end,
    }
}
