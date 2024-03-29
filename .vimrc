" Pathogen
execute pathogen#infect()

" Visual settings
set number
set relativenumber
set tabstop=2 shiftwidth=2 expandtab
set guifont=Monaco:h14
syntax enable
filetype plugin indent on

" Show overflow limit at 80 characters
highlight ColorColumn ctermbg=gray
set colorcolumn=80

" Color scheme
colorscheme hybrid

" Ctrlp settings --- "

" Show hidden files
let g:ctrlp_show_hidden = 1

set wildignore+=*/tmp/*,*/cache/*,*.so,*.swp,*.zip,*.jpg,*.png,*.gif
let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = 'ag %s -l --hidden -i -g ""'

" Use this to customize the mappings inside CtrlP's prompt to your liking. You
" only need to keep the lines that you've changed the values (inside []): >
let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': ['<C-e>'], 'AcceptSelection("t")': ['<cr>'] }

" Ignore node modules and other files
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store'

" Open Ctrlp + :cw in a new tab
:set switchbuf+=usetab,newtab

" ------------------- "

" Open new splits below (for horizontal) and to the right (for vertical)
set splitright
set splitbelow

" Move swap files to a different directory
" From: https://alvinalexander.com/linux-unix/vi-vim-swap-backup-tilde-temporary-files-directory-move
set swapfile
set dir=/private/tmp

" Customize netrw to better explore files
" From: https://shapeshed.com/vim-netrw/
let g:netrw_browse_split = 2
let g:netrw_winsize = 25
let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_altv = 1
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
