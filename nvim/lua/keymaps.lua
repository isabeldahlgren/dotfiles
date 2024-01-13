
vim.g.mapleader = " "
local opts = { noremap = true, silent = false}
local keymap = vim.api.nvim_set_keymap

keymap("i", "jk", "<ESC>", opts)
keymap("n", "<leader>r", ":w<CR>:!python3 %<CR>", opts)
keymap("n", "<leader>l", ":w<CR>:VimtexCompile<CR>", opts)
keymap("n", "<leader>t", ":w<CR>:VimtexTocToggle<CR>", opts)
keymap("n", "<leader>s", ":w<CR>:lua require('luasnip.loaders').edit_snippet_files()<CR>", opts)

vim.api.nvim_set_keymap('n', '<leader>w', [[:lua ToggleTODO()<CR>]], { noremap = true, silent = true })
-- keymap("n", "<leader>w", "[[:lua ToggleTODO()<CR>]]", opts)

function ToggleTODO()
    -- Get the current line
    local current_line = vim.fn.getline('.')
    local pattern = '{\\marginnote{\\texttt{TODO}}}'
  
    -- Check if the line ends with pattern
    if string.match(current_line, pattern) then
        -- If it does, remove pattern
        local modified_line = string.gsub(current_line, pattern, '')
        vim.fn.setline('.', modified_line)
    else
        -- If it doesn't, add pattern
        local modified_line = current_line .. pattern
        vim.fn.setline('.', modified_line)
    end
end
