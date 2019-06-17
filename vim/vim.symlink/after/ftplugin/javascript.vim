setlocal formatprg=prettier\ --stdin\ --single-quote\ --trailing-comma\ all

let g:validator_javascript_checkers = ['eslint']

let g:prettier#config#bracket_spacing = 'true'
nmap <Leader>f <Plug>(PrettierAsync)
