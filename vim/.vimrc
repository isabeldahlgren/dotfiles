
" https://web.archive.org/web/20180106045128/https://dougblack.io/words/a-good-vimrc.html
syntax on
set autoindent
set backspace=indent,eol,start
set number
set relativenumber
let mapleader=' '
set expandtab
set softtabstop=4
set visualbell

" Remaps
inoremap jk <esc>

" Plugin-related stuff
filetype plugin indent on 
call plug#begin()
Plug 'lervag/vimtex'
	let g:tex_flavor='latex'
	let g:vimtex_view_method='skim'
	let g:vimtex_quickfix_mode=0
Plug 'KeitaNakamura/tex-conceal.vim'
    	set conceallevel=1
    	let g:tex_conceal='abdmg'
    	hi Conceal ctermbg=none
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
	let g:airline_theme='nord'
Plug 'arcticicestudio/nord-vim'
Plug 'vimwiki/vimwiki'
    let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
    let g:vimwiki_key_mappings = { 'table_mappings': 0, }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'SirVer/ultisnips'
    let g:UltiSnipsSnippetDirectories=['ultisnippets']
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
call plug#end()

" In order for UltiSnips to work with vimwiki
autocmd FileType vimwiki UltiSnipsAddFiletypes md

" Misc
colorscheme nord
