return {
    {
        'lervag/vimtex',
        init = function()
            vim.g.vimtex_view_method = 'skim'
            vim.opt.conceallevel = 2
            vim.g.Tex_IgnoreLevel = 7
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
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    }
}
