" neocomplete like '来源:https://github.com/deoplete-plugins/deoplete-go
set completeopt+=noinsert
" deoplete.nvim recommend
set completeopt+=noselect

" Path to python interpreter for neovim
"let g:python3_host_prog  = '/usr/local/bin/python3'
" Skip the check of neovim module
let g:python3_host_skip_check = 1

" Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1
" deoplete-go settings
"let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']


au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <F12> <Plug>(go-referrers)
" au FileType go nmap <Leader>f :lv//**/*.go<cr>

let g:go_snippet_engine = "neosnippet"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_auto_sameids = 1
let g:go_auto_type_info = 0
let g:go_updatetime = 200
" let g:go_echo_go_info = 0
let g:go_highlight_generate_tags = 1
let g:go_fmt_command = "goimports"
let g:go_get_update = 0
let g:go_list_type = "locationlist"
let g:go_list_autoclose = 1
" let g:go_list_height = 10
let g:go_highlight_function_arguments = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_trailing_whitespace_error = 0
