"后面需要用这个判断条件
function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction
let mapleader=","
if exists('g:vscode')
    " VSCode extension
    source  $HOME/.config/nvim/init_vscode.vim
else
    " ordinary neovim
    source  $HOME/.config/nvim/init_nomal.vim
endif

source $HOME/.config/nvim/init_comm.vim
