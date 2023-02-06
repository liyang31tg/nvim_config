" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
" Initialize plugin system
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter' "注释用的插件
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'connorholyday/vim-snazzy'
Plug 'sheerun/vim-polyglot' "语法高亮的一个补充和onedark主题结合
Plug 'fatih/vim-go', {'tag':'v1.27', 'do': ':GoUpdateBinaries' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'} "go lsp 最重要的就是enable：false，这个是修复重复提示那个bug的，我也不知道为啥
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'mhinz/vim-startify'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'mbbill/undotree'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
call plug#end()


"nerdtree ====================================================== setting
" Start NERDTree and put the cursor back in the other window.
"au VimEnter * NERDTree 
" Exit Vim if NERDTree is the only window remaining in the only tab.
au BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"let NERDTreeIgnore=['\~$','\.go1$',"^node_modules$","_test.go$"]
let NERDTreeIgnore=['\~$','\.go1$',"^node_modules$"]
map <F3> :NERDTreeToggle<CR>
map <F2> :NERDTreeFind<CR>


let g:NERDCustomDelimiters = {
        \ 'go': { 'left': '//' }
    \ }



"lightline setting start ===================================
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ }

function! LightlineFilename()
  return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        \ &filetype ==# 'unite' ? unite#get_status_string() :
        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
"lightline setting end ===================================


"neosnippet setting start ===================================
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
"neosnippet setting end ===================================

"one dark theme start ==========================
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
"one dark theme end ==========================

"format proto

let g:python3_host_prog = '/usr/bin/python3'

"function! Formatonsave()
  "let l:formatdiff = 1
  "pyf ~/Documents/workspace/clang/tools/clang-format/clang-format.py
"endfunction
"autocmd BufWritePre *.h,*.cc,*.cpp,*.proto call Formatonsave()
