set nu rnu
let mapleader=","
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> 10j
nnoremap <c-k> 10k
nnoremap <c-t> :term<cr>a
nnoremap <c-f> :Ag
nnoremap <c-p> :GFiles<cr>
nnoremap <c-s> :w<cr>
vnoremap <c-s> <esc>:w<cr>
inoremap <c-s> <esc>:w<cr>
nnoremap <leader>q :wq<cr>
syntax on
colorscheme nord
" 设置注释颜色
hi comment ctermfg =darkyellow
" 设置行号颜色
highlight LineNr ctermfg=red 
