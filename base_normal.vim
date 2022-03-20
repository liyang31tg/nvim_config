set completeopt-=preview
set encoding=UTF-8
set nu rnu
set ts=4
set expandtab
set autoindent

"highlght 主要是用来配色的，包括语法高亮等个性化的配置。可以通过:h highlight，查看详细信息

"CursorLine 和 CursorColumn 分别表示当前所在的行列

"cterm 表示为原生vim设置样式，设置为NONE表示可以自定义设置。

"ctermbg 设置终端vim的背景色

"ctermfg 设置终端vim的前景色

"guibg 和 guifg 分别是设置gvim的背景色和前景色，本人平时都是使用终端打开vim，所以只是设置终端下的样式

"set cursorline  "高亮显示当前行
"autocmd WinEnter * highlight CursorLine guibg=#000050 guifg=fg
"autocmd WinLeave * highlight CursorLine guibg=#004000 guifg=fg
set cursorcolumn  "高亮显示当前列
"autocmd BufEnter * highlight CursorColumn ctermfg=fg ctermbg=fg cterm=bold guifg=#FF0000 guibg=#EE82EE gui=bold
"autocmd BufLeave * highlight CursorColumn ctermfg=NONE  ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

"au FileType fzf nnoremap <buffer> <esc> :q<cr>
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <leader>sl <c-w>v
nnoremap <leader>sj <c-w>s
nnoremap <c-t> :term<cr>a
nnoremap <c-f> :Ag 
inoremap <c-f> <esc>:Ag 

nnoremap <c-p> :Files<cr>
inoremap <c-p> <esc>:Files<cr>

nnoremap <c-b> :Buffers<cr>
inoremap <c-b> <esc>:Buffers<cr>

syntax on
colorscheme onedark
"set background=light
"set background=dark
"colorscheme solarized
"windows
nnoremap <leader>q  :q<cr>
nnoremap <c-d>  :q<cr>
inoremap <c-d>  <esc>:q<cr>

" Better Navigation
" Meta 桥接
" ,这类事件需要在iterm快捷键里映射下,<c-数字>vim不支持
" 以下是对应的不支持映射的桥接关系大幅阿斯蒂芬
" <c-0> <M-f>
" <cmd-s> <M-s>
nnoremap <M-f> :NERDTreeFocus<cr>
noremap <F2> :NERDTreeFind<cr>
inoremap <M-f> <esc>:NERDTreeFocus<cr>
inoremap <M-s> <esc>:w<cr>a
nnoremap <M-s> :w<cr>

hi comment ctermfg =darkyellow
" 设置行号颜色
highlight LineNr ctermfg=red 

