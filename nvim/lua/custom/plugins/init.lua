-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {}
    end,
  },
  {
    'pocco81/auto-save.nvim',
  },
  {
    'ryleelyman/latex.nvim',
    config = function()
      require('latex').setup {
        conceals = {
          enabled = {
            'greek',
            'math',
            'script',
            'delim',
            'font',
          },
          add = {
            ['mathrm'] = '',
            ['sqrt'] = '√',
          },
        },
        imaps = {
          enabled = true,
          add = {},
          default_leader = '`',
        },
      }
    end,
  },
  {
    'toppair/peek.nvim',
    event = { 'VeryLazy' },
    build = 'deno task --quiet build:fast',
    config = function()
      require('peek').setup()
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    end,
  },
  {
    'chomosuke/typst-preview.nvim',
    lazy = false, -- or ft = 'typst'
    version = '1.*',
    build = function()
      require('typst-preview').update()
    end,
  },
  {
    'Kicamon/markdown-table-mode.nvim',
    config = function()
      require('markdown-table-mode').setup()
    end,
  },
  {
    'folke/trouble.nvim',
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = 'Trouble',
  },
}
