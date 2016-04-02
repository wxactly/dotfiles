" VIM

set term=xterm-256color
set t_Co=256
set background=dark


" PLUGINS

set nocompatible             " be iMproved, required
filetype off                 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'kana/vim-arpeggio'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'itchyny/lightline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

call arpeggio#load()


" CUSTOM

set backup                   " keep a backup file (restore to previous version)
set undofile                 " keep an undo file (undo changes after closing)
set showcmd                  " display incomplete commands
syntax on                    " switch syntax highlighting on
set hlsearch                 " highlight the last used search pattern
set mouse=a                  " enable mouse

set number                   " Show line numbers
set nowrap                   " don't wrap lines
set tabstop=2                " a tab is two spaces
set shiftwidth=2             " an autoindent (with <<) is two spaces
set expandtab                " use spaces, not tabs
set list                     " Show invisible characters

set ignorecase               " searches are case insensitive...
set smartcase                " ... unless they contain at least one capital letter

set clipboard=unnamed
set noshowmode

" Set backup directories
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

let mapleader = ","
let maplocalleader = "\\"

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

Arpeggio inoremap jk <Esc>
Arpeggio vnoremap jk <Esc>

nnoremap Y y$

" Don't use Ex mode, use Q for formatting
map Q gq

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

" http://vim.wikia.com/wiki/Always_start_on_first_line_of_git_commit_message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
    \ | wincmd p | diffthis

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>

" Create the directory containing the file in the buffer
nmap <silent> <leader>md :!mkdir -p %:p:h<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Map command-[ and command-] to indenting or outdenting
" while keeping the original selection in visual mode
vmap <A-]> >gv
vmap <A-[> <gv

nmap <A-]> >>
nmap <A-[> <<

omap <A-]> >>
omap <A-[> <<

imap <A-]> <Esc>>>i
imap <A-[> <Esc><<i

" http://vim.wikia.com/wiki/Replace_a_word_with_yanked_text
nnoremap S diw"0P
vnoremap S "_d"0P


" THEME

let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
\ },
\ 'component': {
\   'readonly': '%{&filetype=="help"?"":&readonly?"x":""}',
\   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
\   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
\ },
\ 'component_visible_condition': {
\   'readonly': '(&filetype!="help"&& &readonly)',
\   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
\   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
\ }
\ }
