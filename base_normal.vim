set nu rnu
let mapleader=","
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> 10j
nnoremap <c-k> 10k
nnoremap <c-t> :term<cr>a
nnoremap <c-f> :Ag
nnoremap <c-p> :GFiles<cr>
inoremap <M-s> <esc>:w<cr>
nnoremap <M-s> :w<cr>
syntax on
colorscheme nord




hi comment ctermfg =darkyellow
" 设置行号颜色
highlight LineNr ctermfg=red 
