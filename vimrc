set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized8
execute pathogen#infect()
filetype plugin indent on
let g:ale_linters = {'cpp': ['cppcheck','g++']}
let g:ale_fixers = {
    \   '*': ['remove_trailing_lines', 'trim_whitespace'],
    \   'cpp': ['clang-format']
    \}
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0
let g:ale_sign_column_always = 1
let g:ale_cpp_gcc_options = '-Wall'
let g:ale_cpp_cppcheck_options = ''
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡='
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡, %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:c_clangformat_options = '-style=file'
""普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
""<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}\ %{ALEGetStatusLine()}

let g:airline_theme = 'deus'
