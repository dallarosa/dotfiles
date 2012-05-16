set nocompatible

"" Call Pathogen
call pathogen#infect()

"" Encoding
set fencs=euc-jp,iso-2022-jp,cp932,utf-8,default,latin1 
set fenc=utf8
set fileencoding=utf8
set showcmd                     " display incomplete commands

"" Whitespace

set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode
map <F4> :%s/\s\+$  <CR>

""Syntax & Identation

syntax enable
filetype plugin indent on 
set smartindent
set autoindent
set cinkeys=0{,0},:,0#,!,!^F


"" Searching

set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                  " ... unless they contain at least one capital letter
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> " Space to clear highlighting and messages

set number                     "Display line number

""Set up the status line

set ls=2                        "Always show status line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 

"" Window Resizing

map <F5> :res 300 <CR>
map <F6> :vertical res 300 <CR>
map <F7> :vertical res 150 <CR>

"" Maximizing and Restoring of Panes
nmap t% :tabedit %<CR>
nmap td :tabclose<CR>

"" PHP Lint
map <F3> :!php -l % <CR>

"" Commenting/Uncommenting

map <C-D> :s/^/\/\//g <CR> :nohlsearch<Bar>:echo<CR>              " Adds C-like comments
map <C-U> :s/\/\///g <CR> :nohlsearch<Bar>:echo<CR>               " Removes C-like comments