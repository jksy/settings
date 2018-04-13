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
nnoremap <C-]> g<C-]>
nnoremap / /\v
set backupdir=$HOME/settings/vim_bak/
set directory=$HOME/settings/vim_bak/
set tags=tags;

" go settings
autocmd BufWritePre *.go :silent Fmt
autocmd BufWritePre * :%s/\s\+$//ge
autocmd BufNewFile,BufRead *.java setlocal tabstop=4 softtabstop=4 expandtab shiftwidth=4
autocmd BufNewFile,BufRead *.groovy setlocal tabstop=4 softtabstop=4 expandtab shiftwidth=4
let g:go_version_warning = 0 " require Vim 7.4.1689 or newer


" for treetop
set runtimepath+=~/treetop-vim

let mapleader = ","

" for global yank&paste
vmap <leader>Y :w! ~/settings/vim_bak/clipboard<CR>
nmap <leader>Y V:w! ~/settings/vim_bak/clipboard<CR>
nmap <leader>P :r ~/settings/vim_bak/clipboard<CR>
nmap <leader>p :r ~/settings/vim_bak/clipboard<CR>

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
NeoBundle 'thinca/vim-quickrun.git'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'cespare/vim-toml'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'thinca/vim-ref'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'fatih/vim-go'
NeoBundle 'vim-jp/vim-go-extra'
NeoBundle 'slim-template/vim-slim'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

NeoBundleCheck
""End NeoBundle Scripts-------------------------

" for quickrun
nnoremap <leader>t :QuickRun -outputter/buffer/split ":top 8sp" -runner vimproc -runner/updatetime 60 -outputter/error/success buffer -outputter/error quickfix<cr>
let g:quickrun_config = {
\      'ruby.bundle' : { 'command': 'ruby', 'cmdopt': 'bundle exec', 'exec': '%o %c %s' }
\}

au BufNewFile,BufRead *.rb set filetype=ruby.bundle

" http://vim.wikia.com/wiki/Faster_loading_of_large_files
let g:LargeFile = 1024 * 1024 * 10
augroup LargeFile
  autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
augroup END

" coffee
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
autocmd FileType coffee    setlocal sw=2 sts=2 ts=2 et

" refe
let g:ref_refe_cmd = $HOME.'/.rbenv/shims/refe'
