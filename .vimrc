set tabstop=2
set autoindent
set expandtab
set shiftwidth=2
set foldmethod=syntax
set foldlevel=2
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
set backupdir=$HOME/settings/vim_bak/
set directory=$HOME/settings/vim_bak/
