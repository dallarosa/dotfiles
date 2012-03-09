set nocompatible

set fencs=euc-jp,iso-2022-jp,cp932,utf-8,default,latin1 
set fenc=utf-8

syntax enable
set showcmd                     " display incomplete commands

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode

""Identation
filetype plugin indent on 
set smartindent
set autoindent
set cinkeys=0{,0},:,0#,!,!^F


"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                  " ... unless they contain at least one capital letter

set number                     "Display line number

""Set up the status line
set ls=2                        "Always show status line
set statusline=%l,%c\ -\ #%n/%N