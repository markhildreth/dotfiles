" Some normal VIM rules
noswap
syntax enable
set nohlsearch
set number
set cursorline
set listchars=tab:»\ 
set list
set ruler
set noswapfile
set tw=79

" Allow for undos to persist between sessions
set undofile
set undodir=~/.vim/undodir

" Default tabs, overridable by default language syntax
set noexpandtab copyindent preserveindent softtabstop=2 shiftwidth=2 tabstop=2

call plug#begin()
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:ctrlp_custom_ignore = 'node_modules\|target\|.\.lock'
let g:rustfmt_autosave = 1
set background=dark
colorscheme solarized
hi CocRustTypeHint ctermbg=0 ctermfg=13

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
