" Enable filetype detection
filetype on
" Load plugin files for each filetype (.vim/after/ftplugin/*.vim)
filetype plugin on
" Load indent file for each filetype (.vim/after/indent/*.vim)
filetype plugin indent on

" Enable syntax highlighting
syntax enable

" Load pathogen
call pathogen#infect()

" Remove all unwanted whitespaces on save
autocmd BufWritePre * :%s/\r\+$//e " Windows newlines
autocmd BufWritePre * :%s/\s\+$//e

" Rebind <leader>
let mapleader = ","

" Turn on line numbers
set relativenumber

" Indent the next line similiar to current line
set autoindent
" Use same indentation characters as current line
set copyindent
" Use spaces instead of tabs for indentation
set expandtab
" Use 4 spaces for indentation
set shiftwidth=4
" Round all indentations to multiple of shiftwidth
set shiftround
" Set tabs to be equivalent to 4 spaces (fixes retab)
set tabstop=4

" Long lines handling
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80,100

" Display ruler with current possition
set ruler

" Display statusline
set laststatus=2

" Set how many lines that should be displayed above/under cursor
set scrolloff=7

" Show hidden unwanted characters
set list
set listchars=tab:►\ ,trail:·,nbsp:□

" Hightlight paired brackets
set showmatch

" Highlight all matches for a search
set hlsearch
" Search as you type
set incsearch
" Replace all occurences on each line
set gdefault
" Only search case sensitive if a letter is uppercase
set ignorecase
set smartcase

" Increase history and amount of undos to 1000
set history=1000
set undolevels=1000

" Create undo files
"set undofile

" Don't create backup or swap files
set nobackup
set noswapfile

" Enable wildmenu (inline file explorer in command line)
set wildmenu
set wildmode=list:longest,full

" Update window title with path to open file
set title

" Adjust bells to avoid sound, visual only
set visualbell
set noerrorbells

" Map shift+h/shift+l for navigate between tabs
map <S-h> gT
map <S-l> gt

" Toggle line numbers on/off
map <leader>l :call ToggleLineNumberingStyle()<CR>
function! ToggleLineNumberingStyle()
    if &number
        set relativenumber
    else
        set number
    endif
endfunction

" Toggle paste mode
map <leader>p :set invpaste<CR>

" Bindings for phpDocumentor
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>

" Configure solarized to 256 color terminal with dark background
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized
