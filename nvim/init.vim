set number                   " Show line numbers
set nowrap                   " don't wrap lines
set tabstop=2                " a tab is two spaces
set shiftwidth=2             " an autoindent (with <<) is two spaces
set expandtab                " use spaces, not tabs
set list                     " Show invisible characters

set ignorecase               " searches are case insensitive...
set smartcase                " ... unless they contain at least one capital letter

set listchars=trail:\ ,tab:\ \ ,precedes:«,extends:»

let mapleader = ","
let maplocalleader = "\\"

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

nnoremap m d
nnoremap M D
vnoremap m d
vnoremap M D

inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>

