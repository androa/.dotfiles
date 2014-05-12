" Fold by syntax
setlocal foldmethod=syntax

" Only fold two levels in
setlocal foldlevel=2

" Use 4 columns to display nesting and folds
setlocal foldcolumn=4

" Use 2 spaces for indentation
setlocal shiftwidth=2

" Set tabs to be equivalent to 2 spaces (fixes retab)
setlocal tabstop=2

" Binds for formatting through xmllint
nnoremap <buffer> <C-L> :%!xmllint --format -<CR>
