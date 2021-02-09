" based on: https://dougblack.io/words/a-good-vimrc.html
set nocompatible
colorscheme badwolf
if has('syntax')
  syntax enable
endif

set tabstop=4	" visual spacing per TAB
set softtabstop=4	" number of spaces per TAB when editing
set expandtab	" tabs are spaces

set number	" show line numbers
set showcmd	" sow commands at bottom
set cursorline	" highlight current line

filetype indent on " load filetype-specific indent files

set wildmenu    " visual autocomplete for visual menu
set lazyredraw  " redraw only when we need to
set showmatch   " highlight matching [{()}]
set incsearch   " search as characters are entered
set hlsearch    " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set foldenable  " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10  " 10 nested fold max
" space open/close folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" highlight last inserted text
nnoremap gV `[v`]

if has('Plug')
  call plug#begin('~/.vim/plugged')

  Plug 'mrk21/yaml-vim'

  call plug#end()
endif

augroup configgroup
        autocmd!
        autocmd VimEnter * highlight clear SignColumn
        autocmd FileType java setlocal noexpandtab
        autocmd FileType java setlocal list
        autocmd FileType java setlocal listchars=tab:+\ ,eol:-
        autocmd FileType java setlocal formatprg=par\ -w80\ -T4
        autocmd FileType php setlocal expandtab
        autocmd FileType php setlocal list
        autocmd FileType php setlocal listchars=tab:+\ ,eol:-
        autocmd FileType php setlocal formatprg=par\ -w80\ -T4
        autocmd FileType ruby setlocal tabstop=2
        autocmd FileType ruby setlocal shiftwidth=2
        autocmd FileType ruby setlocal softtabstop=2
        autocmd FileType ruby setlocal commentstring=#\ %s
        autocmd FileType python setlocal commentstring=#\ %s
        autocmd BufEnter *.cls setlocal filetype=java
        autocmd BufEnter *.zsh-theme setlocal filetype=zsh
        autocmd BufEnter Makefile setlocal noexpandtab
        autocmd BufEnter *.sh setlocal tabstop=2
        autocmd BufEnter *.sh setlocal shiftwidth=2
        autocmd BufEnter *.sh setlocal softtabstop=2
        autocmd FileType *.{yaml,yml} yml set filetype=yaml foldmethod=indent setlocal tabstop=2 softtabstop=2 sw=2 expandtab
augroup END

