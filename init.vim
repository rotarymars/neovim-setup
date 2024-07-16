set number
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=a
colorscheme slate

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'

Plug 'https://github.com/preservim/nerdtree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}


"Plug 'Shougo/deoplete.nvim'
"Plug 'zchee/deoplete-clang'
"let g:deoplete#sources#clang#libclang_path = '/usr/lib/x86_64-linux-gnu/libclang-14.so.1'
"et g:deoplete#sources#clang#clang_header = '/usr/include/c++/11'

Plug 'https://github.com/lukas-reineke/indent-blankline.nvim'

call plug#end()
"for lukas-reineke/indent-blankline.nvim
lua require("ibl").setup()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

