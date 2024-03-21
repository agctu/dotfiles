set nocompatible
set encoding=utf8
set fileencodings=utf8,cp936
syntax enable
syntax on
set autochdir
set laststatus=2
set statusline=%10.20t\ %10.20([%M%R%H]%)\ %15.45(Line\ %l\ of\ %L\ %P\ Col\ %c%V%)\ %10.20(Byte\ %b\ %B%)%=%-100.400(%10(%{&fileformat}\ Type=%y\ Encoding=%{&enc}\ %{&bomb?\"with\ BOM\":\"\"}%)%)
set backspace=indent,eol,start
set number
set cursorline
"window move
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <F2> gg"+yG<C-o><C-o>
nnoremap <F3> :call SetTitle()<CR>9gg$
nnoremap <F4> :split $MYVIMRC<CR>
nnoremap <F5> :call CompileCurrentFile()<CR>
nnoremap <F6> :source $MYVIMRC<CR>
func! SetTitle()
    exec "r D:/code/mine/competitive_programming/codeforces_template.cpp"
    exec "normal ggdd"
	endfunc
func! CompileCurrentFile() 
	exec "w"
	exec "!g++ % -std=c++11 -g"
	endfunc
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cindent
set autoindent
set expandtab
"set hls
"from here-> https://stackoverflow.com/questions/6076592/vim-set-formatoptions-being-lost
autocmd BufNewFile,BufRead * setlocal formatoptions=cql
"set formatoptions=cql
set incsearch
set guifont=Lucida_console:h12:cANSI:qDRAFT
"set foldmethod=syntax
set autoread
set runtimepath^=D:\.vim\bundle\ctrlp.vim
set runtimepath^=D:\.vim\bundle\vim-easymotion
set runtimepath^=D:\.vim\bundle\ale
set noswapfile
map <Leader> <Plug>(easymotion-prefix)
"helptags ALL //this load all helptags of the (?) packages.

"this does not work?
filetype plugin on
