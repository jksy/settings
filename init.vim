colorscheme iceberg
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

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" disable mouse
set mouse=

" set foldmethod=syntax
" set foldlevel=2
"set foldnestmax=2
nnoremap <silent> <Space> za
vnoremap <Space> zf
nnoremap <C-]> g<C-]>
nnoremap / /\v
set backupdir=$HOME/settings/vim_bak/
set directory=$HOME/settings/vim_bak/
set tags=tags;

" go settings
" autocmd BufWritePre *.go :silent Fmt
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
nmap <leader>r :QuickRun<CR>
nmap <leader>t :Tags<CR>
nmap <leader>f :Files<CR>
nmap <leader>gf :GFiles<CR>
nmap <leader>grep :Rg<CR>
nmap Y yy

" Plug-----------------------------

call plug#begin('~/.vim/plugged')
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" snippet
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" git
Plug 'airblade/vim-gitgutter'
"color schemes
Plug 'flazz/vim-colorschemes'
" quick-run
Plug 'thinca/vim-quickrun'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" syntax files for programming languages
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
" Plug 'fatih/vim-go'
" Plug 'vim-jp/vim-go-extra'
Plug 'slim-template/vim-slim'
Plug 'posva/vim-vue'
Plug 'vim-ruby/vim-ruby'

Plug 'scrooloose/syntastic'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'cocopon/iceberg.vim'

Plug 'github/copilot.vim'
Plug 'hashivim/vim-terraform'
let g:terraform_fmt_on_save=1

" tabnine https://www.tabnine.com/
" Plug 'codota/tabnine-vim'
call plug#end()

" TypeScript
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

" for quickrun
nnoremap <leader>t :QuickRun -outputter/buffer/split ":top 8sp" -runner vimproc -runner/updatetime 60 -outputter/error/success buffer -outputter/error quickfix<cr>
let g:quickrun_config = {
\      'ruby.bundle' : { 'command': 'ruby', 'cmdopt': 'bundle exec', 'exec': '%o %c %s' },
\      'pythonr.pytest' : { 'command': 'py.test', 'cmdopt': '-s -v', 'hook/shebang/enable': 0, }
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

