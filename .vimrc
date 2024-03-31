"Basic {{{
set nocompatible
syntax enable
syntax on
set autochdir
set backspace=indent,eol,start
set number
set cursorline
set incsearch
set guifont=Lucida_console:h12:cANSI:qDRAFT
"set foldmethod=syntax
set autoread
"set hls
"}}}

"Encoding {{{
set encoding=utf8
set fileencodings=utf8,cp936
"}}}

"Statusline {{{
set laststatus=2
set statusline= "clear
set statusline+=%10.20t "file name of buffer
set statusline+=\ %10.20([%M%R%H]%) "mode flags
set statusline+=\ %15.45(Line\ %l\ of\ %L\ %P\ Col\ %c%V%) "current position
set statusline+=\ %10.20(Byte\ %b\ %B%) "current character
set statusline+=%= "splitter
set statusline+=%-100.400(%10(%{&fileformat}\ Type=%y\ Encoding=%{&enc}\ %{&bomb?\"with\ BOM\":\"\"}%)%) "file attributes
"}}}

"Window Move {{{
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"}}}

"F-key Shortcuts {{{
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
"}}}

"Automatic very-magic. {{{
nnoremap / /\v
nnoremap ? ?\v
"}}}

"Indentation {{{
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cindent
set autoindent
set expandtab
"}}}

"Autocmd {{{
"from here-> https://stackoverflow.com/questions/6076592/vim-set-formatoptions-being-lost
augroup mine

autocmd!
autocmd BufNewFile,BufRead * setlocal formatoptions=cql
autocmd FileType vim setlocal foldmethod=marker

augroup END
"}}}

"Plugins {{{
filetype off

set runtimepath^=D:\.vim\bundle\ctrlp.vim
set runtimepath^=D:\.vim\bundle\vim-easymotion
set runtimepath^=D:\.vim\bundle\ale
set runtimepath^=D:\code\vimscript\lvthw\potion-plugin
set noswapfile
map <Leader> <Plug>(easymotion-prefix)
"helptags ALL //this load all helptags of the (?) packages.

"this does not work?
filetype plugin on
"}}}
