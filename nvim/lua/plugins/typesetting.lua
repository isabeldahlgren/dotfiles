return {
    {
        'lervag/vimtex',
        init = function()
            vim.g.tex_flavor = 'latex'
            vim.g.vimtex_view_method = 'skim'
            vim.opt.conceallevel = 2
            vim.g.vimtex_syntax_enabled = on
        end,
    },
    {
        'folke/zen-mode.nvim',
        config = {
              window = {
                  options = {
                      number = false,
                  },
              },
        }
    },
    {
        'iamcco/markdown-preview.nvim',
        ft = "markdown",
        build = ":call mkdp#util#install()",
        lazy = true,
    },
}
