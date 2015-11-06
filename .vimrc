colorscheme evening
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set shiftwidth=2
set winminheight=0
set autochdir
set foldmethod=syntax
set foldlevel=2
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
set backupdir=$HOME/settings/vim_bak/
set directory=$HOME/settings/vim_bak/

" go settings
autocmd BufWritePre *.go :silent Fmt

" for treetop
set runtimepath+=~/treetop-vim
