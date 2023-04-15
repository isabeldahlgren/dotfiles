return {
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    name = "nord",
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme nord]])
    end,
   },
}
