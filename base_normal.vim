set completeopt-=preview
set encoding=UTF-8
set nu rnu
set ts=4
set expandtab
set autoindent
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <leader>sl <c-w>v
nnoremap <leader>sj <c-w>s
nnoremap <c-t> :term<cr>a
nnoremap <c-f> :Ag 
nnoremap <c-p> :Files<cr>
syntax on
"colorscheme nord
syntax enable
set background=light
colorscheme solarized
"windows
nnoremap <leader>q  :q<cr>

" Better Navigation
" Meta 桥接
" ,这类事件需要在iterm快捷键里映射下,<c-数字>vim不支持
" 以下是对应的不支持映射的桥接关系
" <c-0> <M-f>
" <cmd-s> <M-s>
nnoremap <M-f> :NERDTreeFocus<cr>
inoremap <M-f> <esc>:NERDTreeFocus<cr>
inoremap <M-s> <esc>:w<cr>a
nnoremap <M-s> :w<cr>

hi comment ctermfg =darkyellow
" 设置行号颜色
highlight LineNr ctermfg=red 

