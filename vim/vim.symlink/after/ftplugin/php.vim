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

" Start Vdebug
nnoremap <F5> :VdebugStart<CR>

" Set debug port for Xdebug
let g:debuggerPort = 11016

" Configure PDV
let g:pdv_cfg_Author = "André Roaldseth <andrer@vg.no>"
let g:pdv_cfg_php4always = 0 " Turn of @access, etc

" Configure vdebug to run on an available port
let g:vdebug_options = { "port" : 11016 }

" Set the codesniffer args
let g:phpqa_codesniffer_args = "--standard=PSR2"
