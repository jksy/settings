colorscheme elflord
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
nmap <leader>r :QuickRun<space>

" Plug-----------------------------

call plug#begin('~/.vim/plugged')
" snippet
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" git
Plug 'tpope/vim-fugitive'
"color schemes
Plug 'flazz/vim-colorschemes'
" quick-run
Plug 'thinca/vim-quickrun'

" syntax files for programming languages
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'kchmck/vim-coffee-script'
Plug 'fatih/vim-go'
Plug 'vim-jp/vim-go-extra'
Plug 'slim-template/vim-slim'
Plug 'posva/vim-vue'
call plug#end()

" for quickrun
nnoremap <leader>t :QuickRun -outputter/buffer/split ":top 8sp" -runner vimproc -runner/updatetime 60 -outputter/error/success buffer -outputter/error quickfix<cr>
let g:quickrun_config = {
\      'ruby.bundle' : { 'command': 'ruby', 'cmdopt': 'bundle exec', 'exec': '%o %c %s' }
\}

au BufNewFile,BufRead *.rb set iskeyword+=!
au BufNewFile,BufRead *.rb set filetype=ruby.bundle

" http://vim.wikia.com/wiki/Faster_loading_of_large_files
let g:LargeFile = 1024 * 1024 * 10
augroup LargeFile
  autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
augroup END

" coffee
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
autocmd FileType coffee    setlocal sw=2 sts=2 ts=2 et

