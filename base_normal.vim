set nu rnu
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <leader>sl <c-w>v
nnoremap <leader>sj <c-w>s
nnoremap <c-t> :term<cr>a
nnoremap <c-f> :Ag
nnoremap <c-p> :GFiles<cr>
syntax on
colorscheme nord

"windows
nnoremap <leader>q  :wq<cr>
nnoremap <leader>w  :w<cr>

" Better Navigation
" Meta 桥接
" ,这类事件需要在iterm快捷键里映射下,<c-数字>vim不支持
nnoremap <M-f> :NERDTreeFind<cr>
inoremap <M-f> <esc>:NERDTreeFind<cr>
inoremap <M-s> <esc>:w<cr>a
nnoremap <M-s> :w<cr>

hi comment ctermfg =darkyellow
" 设置行号颜色
highlight LineNr ctermfg=red 
