" Enable folding of classes, functions and methods
let g:php_folding=1

" Fold by syntax
set foldmethod=syntax

" Only fold two levels in
set foldlevel=2

" Use 4 columns to display nesting and folds
set foldcolumn=4

" Binds for running PHP, lint and unittest
autocmd FileType php nnoremap <C-P> :!php %<CR>
autocmd FileType php nnoremap <C-L> :!php -l %<CR>
autocmd FileType php nnoremap <C-U> :!phpunit %<CR>

" Create docblocks
autocmd FileType php nmap <C-d> :call JCommentWriter()<CR>

" Set debug port for Xdebug
let g:debuggerPort = 9108
