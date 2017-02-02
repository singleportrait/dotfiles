" Pathogen
execute pathogen#infect()

" Visual settings
set relativenumber
set tabstop=2 shiftwidth=2 expandtab
set guifont=Monaco:h15

" Show overflow limit at 80 characters
highlight ColorColumn ctermbg=gray
set colorcolumn=80

" Color scheme
colorscheme hybrid

" Ctrlp settings
set wildignore+=*/tmp/*,*/cache/*,*.so,*.swp,*.zip,*.jpg,*.png,*.gif
let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = 'ag %s -l -i -g ""'
