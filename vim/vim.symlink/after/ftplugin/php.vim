" Enable folding of classes, functions and methods
let g:php_folding=1

" Fold by syntax
setlocal foldmethod=syntax

" Only fold two levels in
setlocal foldlevel=2

" Use 4 columns to display nesting and folds
setlocal foldcolumn=4

" Binds for running PHP, lint and unittest
autocmd FileType php nnoremap <C-L> :!php -l %<CR>
autocmd FileType php nnoremap <C-U> :!phpunit %<CR>

" Bindings for phpDocumentor
inoremap <C-D> <ESC>:call PhpDocSingle()<CR>
nnoremap <C-D> :call PhpDocSingle()<CR>
vnoremap <C-D> :call PhpDocRange()<CR>

" Set debug port for Xdebug
let g:debuggerPort = 11016
