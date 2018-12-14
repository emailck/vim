set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示
winpos 5 5          " 设定窗口位置
set nu              " 显示行号
syntax on           " 语法高亮
set ruler           " 显示标尺
set showcmd         " 输入的命令显示出来，看的清楚些
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)
set nocompatible    "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set tags=tags       "设置tags
set completeopt=longest,menu
"set autochdir
set clipboard+=unnamed
set makeprg=g++\ -Wall\ \ %    "make 运行
set autowrite      "自动保存
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
" set guioptions-=T           " 隐藏工具栏
" set guioptions-=m           " 隐藏菜单栏
set foldcolumn=0
set foldmethod=indent
set foldlevel=5
set confirm         " 在处理未保存或只读文件的时候，弹出确认
" set foldenable              " 开始折叠
set autoindent      " 自动缩进
set smartindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set history=1000
set hlsearch
set gdefault
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set langmenu=zh_CN.UTF-8
set helplang=cn
set nofoldenable
set completeopt=preview,menu
filetype on
filetype plugin on
filetype indent on
set viminfo+=!
set iskeyword+=_,$,@,%,#,-
set wildmenu
set backspace=2
set mouse=c
set selection=exclusive
set selectmode=mouse,key
set report=0
set showmatch
set matchtime=1
set scrolloff=3
"
set smartindent
if version >= 603

    set helplang=cn

    set encoding=utf-8

endif
"
" 设置配色方案
set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
"colorscheme  koehler
"let g:detorte_theme_mode = 'dark'
colorscheme solarized8
"colorscheme detorte
"
execute pathogen#infect()
filetype plugin indent on
"ale
let g:ale_linters = {'cpp': ['cppcheck','g++']}
let g:ale_fixers = {
            \   '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'cpp': ['clang-format']
            \}
let g:ale_open_list = 0
" Set this if you want to.
" " This can be useful if you are combining ALE with
" " some other plugin which sets quickfix errors, etc.
let g:ale_keep_list_window_open = 0
let g:ale_sign_column_always = 1
let g:ale_cpp_gcc_options = '-Wall'
let g:ale_cpp_cppcheck_options = ''
let g:ale_fix_on_save = 0
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:c_clangformat_options = '-style=file'
" Write this in your vimrc file
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 1
let g:ale_c_parse_makefile = 0
"airline
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"let g:airline_symbols.linenr = ''
"let g:airline_symbols.linenr = 'Ξ'
let g:airline_symbols.linenr = ''
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#wordcount#filetypes = ['all']
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1"
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#sha1_len = 10
"let g:airline#extensions#branch#vcs_priority = ["git", "fugitive"]

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab
""普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
""<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
let g:airline#extensions#ale#enabled = 1
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}\ %{ALEGetStatusLine()}

let g:airline_theme = 'deus'

"map <C-K> :pyf /usr/lib/llvm-3.8/bin/clang-format.py<cr>
"imap <C-K> <c-o>:pyf /usr/lib/llvm-3.8/bin/clang-format.py<cr>
noremap = :pyf /usr/lib/llvm-3.8/bin/clang-format.py<cr>

let g:tagbar_autofocus = 1
nnoremap <silent> <F9> :TagbarToggle<CR>

let NERDTreeIgnore=['\.o', '\.lo$']

"set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
"
"
"

"键盘命令
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <leader>w :w!<cr>

nmap <leader>f :find<cr>

" 映射全选+复制 ctrl+a
"
map <C-A> ggVGY
"
map! <C-A> <Esc>ggVGY
"
map <F12> gg=G
"
" " 选中状态下 Ctrl+c 复制
"
vmap <C-c> "+y
"
" "去空行
"
" nnoremap <F2> :g/^\s*$/d<CR>
nnoremap <F2> :ALEFix<CR>
"
" "比较文件
"
nnoremap <C-F2> :vert diffsplit
"
" "新建标签
"
map <M-F2> :tabnew<CR>
"
" "列出当前目录文件
"
"map <F3> :tabnew .<CR>
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :FZF<CR>
"
" "打开树状文件目录
"
map <C-F3> \be
"
" "C，C++ 按F5编译运行
"
map <F5> :!make -j4 -C $DIR/../<CR>
map <F6> :copen<CR>
map <F7> :cclose<CR>
"
map <M-h> <C-W>h
map <M-j> <C-W>j
map <M-k> <C-W>k
map <M-l> <C-W>l
exec "set <M-h>=\eh"
exec "set <M-j>=\ej"
exec "set <M-k>=\ek"
exec "set <M-l>=\el"
set ttimeout ttimeoutlen=100

""实用设置

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置当文件被改动时自动载入
"
" set autoread
"
" " quickfix模式
"
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"
" "代码补全
"
function! ClosePair(char)

    if getline('.')[col('.') - 1] == a:char

        return "\<Right>"

    else

        return a:char

    endif

endfunction

filetype plugin indent on

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_simple_template_highlight = 0
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 0
let cpp_no_cpp11 = 1
let cpp_no_cpp14 = 1

"let c_no_curly_error=1
"set re=1
"set ttyfast
"set lazyredraw

set listchars=tab:»■,trail:■

set fileencoding=utf-8
set encoding=utf-8
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline
