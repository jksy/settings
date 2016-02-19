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
autocmd BufWritePre * :%s/\s\+$//ge

" for treetop
set runtimepath+=~/treetop-vim

let mapleader = ","
nnoremap <leader>t :QuickRun -outputter/buffer/split ":top 8sp" -runner vimproc -runner/updatetime 60 -outputter/error/success buffer -outputter/error quickfix

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/home/j_kasuya/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/j_kasuya/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'thinca/vim-quickrun.git'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

NeoBundleCheck
""End NeoBundle Scripts-------------------------
