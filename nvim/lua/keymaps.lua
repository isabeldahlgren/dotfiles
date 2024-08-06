
vim.g.mapleader = " "
local opts = { noremap = true, silent = false }
local keymap = vim.api.nvim_set_keymap

keymap("i", "jk", "<ESC>", opts)
keymap("n", "<leader>r", ":w<CR>:!python3 %<CR>", opts)
keymap("n", "<leader>j", ":w<CR>:VimtexCompile<CR>", opts)
keymap("n", "<leader>t", ":w<CR>:VimtexTocToggle<CR>", opts)
keymap("n", "<leader>s", ":w<CR>:lua require('luasnip.loaders').edit_snippet_files()<CR>", opts)

