colorscheme evening
set nocompatible
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set shiftwidth=2
set winminheight=0
set autochdir
syntax on
filetype on
filetype indent on
filetype plugin on

set foldmethod=syntax
set foldlevel=1
"set foldnestmax=2
nnoremap <silent> <Space> za
vnoremap <Space> zf
set backupdir=$HOME/settings/vim_bak/
set directory=$HOME/settings/vim_bak/

" go settings
autocmd BufWritePre *.go :silent Fmt

" for treetop
set runtimepath+=~/treetop-vim
