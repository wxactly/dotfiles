set nocompatible

" PLUGINS

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

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

set clipboard=unnamed        " Use the system clipboard
set noshowmode               " Hide insert mode display - handled by theme

" Spell check
autocmd FileType mail setlocal spell spelllang=en_us
autocmd BufRead COMMIT_EDITMSG setlocal spell spelllang=en_us
autocmd BufNewFile,BufRead *.md,*.mkd,*.markdown set spell spelllang=en_us

" Set backup directories
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set listchars=trail:\ ,tab:\ \ ,precedes:«,extends:»

let mapleader = ","
let maplocalleader = "\\"

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

Arpeggio inoremap jk <Esc>
Arpeggio vnoremap jk <Esc>

let g:EasyClipAlwaysMoveCursorToEndOfPaste = 1
let g:EasyClipShareYanks = 1
let g:EasyClipUseSubstituteDefaults = 1

nmap M <Plug>MoveMotionEndOfLinePlug

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


" THEME

set background=dark          " tell vim we're using a dark background

colorscheme disco
hi clear SpellBad
hi SpellBad cterm=underline

let g:lightline = {
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'fugitive', 'readonly', 'relativepath', 'modified' ] ]
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

