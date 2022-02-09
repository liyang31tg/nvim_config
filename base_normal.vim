set nu rnu
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <s-j> 10j
nnoremap <s-k> 10k
nnoremap <leader>sl <c-w>v
nnoremap <leader>sj <c-w>s
nnoremap <c-t> :term<cr>a
nnoremap <c-f> :Ag
nnoremap <c-p> :GFiles<cr>
inoremap <M-s> <esc>:w<cr>
nnoremap <M-s> :w<cr>
syntax on
colorscheme nord

"windows
nnoremap <leader>q  :wq<cr>
nnoremap <leader>w  :w<cr>




hi comment ctermfg =darkyellow
" 设置行号颜色
highlight LineNr ctermfg=red 
