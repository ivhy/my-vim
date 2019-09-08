call plug#begin('~/.vim/plugged')
" 下面的我安装的插件

" Plug 'Valloric/YouCompleteMe', {'on': [], 'do': './install.py --clang-complete --go-complete --system-libclang --java-complete'}

Plug '~/.vim/plugged/YouCompleteMe'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'ryanoasis/vim-devicons',
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
" Tab缩进线
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
Plug 'iamcco/markdown-preview.vim', {'for': 'markdown'}
Plug 'Chiel92/vim-autoformat', {'on': 'Autoformat'}
Plug 'sgur/vim-lazygutter'
Plug 'SirVer/ultisnips'
Plug 'fisadev/vim-isort', {'on': 'Isort'}
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter', {'on': '<plug>ERDCommenterToggle'}
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-easy-align', {'on': '<Plug>(EasyAlign)'}
Plug 'tpope/vim-sensible'
Plug 'rhysd/clever-f.vim'
Plug 'vim-scripts/stlrefvim'
Plug 'Mizuchi/STL-Syntax', {'for': 'cpp'}

" find & search & move
Plug 'Yggdroot/LeaderF', {'on': ['LeaderfFile', 'LeaderfFunction']}
Plug 'easymotion/vim-easymotion', {'on': ['<Plug>(easymotion-bd-w)', '<Plug>(easymotion-bd-jk)']}

" syntax highlight
Plug 'Glench/Vim-Jinja2-Syntax', {'for': 'html'}
Plug 'liuchengxu/space-vim-dark'
Plug 'PotatoesMaster/i3-vim-syntax', {'for': 'i3'}
Plug 'posva/vim-vue', {'for': 'vue'}
Plug 'luochen1990/rainbow'
" html插件 让他们只在写前端文件的时候起作用
Plug 'mattn/emmet-vim', {'for':['html', 'css', 'js']}
Plug 'hail2u/vim-css3-syntax', {'for':['html', 'css', 'js']}
Plug 'groenewege/vim-less', {'for':['html', 'css', 'js']}
Plug 'Raimondi/delimitMate', {'for':['html', 'css', 'js']}
Plug 'sophacles/vim-processing', {'for':['html', 'css', 'js']}

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
" 管理tab
Plug 'ervandew/supertab'
" 语法补全
Plug 'honza/vim-snippets', {'on':[]}

call plug#end()
"插件末尾
" 延时加载语法补全
augroup load_snippets
  autocmd!
  autocmd InsertEnter * call plug#load('vim-snippets') | autocmd! load_snippets
augroup END

augroup load_ycm
  autocmd!
  autocmd InsertEnter * call plug#load('YouCompleteMe') | autocmd! load_ycm
augroup END

" vim setting
set ttyfast
set scrolloff=7            " 滚动的时候有7行多余
set updatetime=100         " update time
set termguicolors          " true color
set lazyredraw             " lazy draw
set nofoldenable           " 禁用折叠"
set nocompatible           " 去除vi 和vim 的一致性
set nu                     " 设置行号
filetype plugin indent on  " 开启类型检查
syntax on                  " 开启语法高粱
set autoindent             " 自动缩进
set cindent                " C语言的缩进格式
set smartindent            " 当遇到右花括号（}），则取消缩进形式
set shiftround
set ruler                  " 底部的行号等显示
set novisualbell           " 去掉输入错误的提示声音
" 关于tab和space的一些setting
set softtabstop=2          " 逢2空格进1制表符
set expandtab              " expandtab，输入一个tab，将被展开成softtabstop值个空格，如果softtabstop=4，那么一个tab就会被替换成4个空格
set tabstop=2              " 定义tab所等同的空格长度
set shiftwidth=2           " 程序中自动缩进所使用的空白长度指示的
set t_md=                  " 禁用粗体
set t_Co=256               " 开启256色
" file type setting
set fileformat=unix        " filetype 文件格式主要区别在于Windows和Unix的换行符不同
set encoding=utf-8         " 编码utf-8
set cmdheight=1            " vim命令模式下的命令行高度，最下方命令行
set noswapfile             " 禁止生产交换文件
set relativenumber         " 相对模式的行号
" set norelativenumber       " 行号为不是相对模式
set ignorecase             " 忽略大小写
set shortmess=I            " 不显示vim版本信息
set noshowmode             " 在底部命令行不显示当前模式
set nrformats=             " 使vim将所有数字当成十进制
set timeoutlen=300        " 设置leader键延迟为300ms
set splitbelow
set splitright
set showcmd
set hidden
set laststatus=2           " 设置状态航
set hlsearch
" ctags setting
set tags=./tags


" vimsymotion-bd-jk) " 跳转到任意行首" colorscheme and color setting
colorscheme space-vim-dark
hi CursorLineNR cterm=bold gui=bold
hi lineNr guibg=NONE ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi Comment guifg=#5C6370 ctermfg=59 gui=NONE
hi CursorLineNr guibg=NONE ctermbg=NONE
hi Pmenu guibg=NONE ctermbg=NONE guifg=#af87d7 guibg=NONE
hi TabLineFill ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
hi TabLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
hi TabLineSel ctermfg=red ctermbg=NONE guifg=#d75faf guibg=NONE
hi Search cterm=underline ctermfg=red ctermbg=NONE guifg=red guibg=NONE gui=underline
highlight OverLength ctermbg=red ctermfg=white guibg=#592929

let mapleader=","
map <leader>n :NERDTreeToggle<cr>
map <leader><leader>t :LeaderfFunction!<cr> "查找函数
map <F1> <nop>
" map j gj
" map k gk
vnoremap <leader>y "+y
vnoremap <leader>p "+p
" nnoremap <F5> :vsplit $MYVIMRC<cr>
nnoremap <F6> :source $MYVIMRC<cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <down> <C-w>-
nnoremap <up> <C-w>+
nnoremap <left> <C-w><
nnoremap <right> <C-w>>

noremap <c-a> I
noremap <c-e> A
noremap ; :
noremap <leader>w :w<cr>
noremap <leader>q :q!<cr>
noremap <leader>e :wq<cr>
autocmd FileType python noremap <leader>c A:<cr>
" 消除颜色 比如搜索上的颜色 消除掉这个颜色
noremap <leader><space> :nohlsearch<cr>
" 加载文件
noremap <leader>f :LeaderfFile<cr>
autocmd FileType python noremap <leader><leader>d :Pydocstring<cr>
noremap H ^
noremap L $
" 跳转到不同的窗口
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
noremap D d$
noremap Y y$
noremap <tab> %

inoremap <leader>w <Esc>:w<cr>
inoremap <C-a> <esc>I
inoremap <C-e> <esc>A
inoremap <leader>q <Esc>:wq<cr>
inoremap <leader>e =
inoremap <leader>r -
inoremap <leader>a +
inoremap <leader>u _
inoremap <leader>i ____<Esc>hi
inoremap <leader>n <Esc>o
inoremap <leader>b ()<Esc>i
inoremap <leader>s []<Esc>i
inoremap <leader>t {}<Esc>i
inoremap <leader>m *
inoremap <leader>d ->
inoremap <leader>f <Esc>bi"<Esc>ea"
inoremap <leader>j <Esc>ji
inoremap <leader>k <Esc>ki
inoremap jj <Esc>j
inoremap kk <Esc>k
inoremap <leader>O <Esc>O
inoremap <leader>o <Esc>o
inoremap <c-l> <right>


" 输入快捷方式
iabbrev im import
cabbrev tn tabnew
cabbrev install PlugInstall

" vim tables
noremap gn :tabn<CR>
noremap gp :tabp<CR>

" terminal mapping
tnoremap <Esc> <C-\><C-n>
tnoremap <leader>w <C-\><C-n>
tnoremap <leader>q <C-\><C-n>:q!<cr>

if has("nvim")
  nnoremap <leader>o :below 10sp term://$SHELL<cr>i
endif

tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
tnoremap gn <C-\><C-n>:tabn<CR>
tnoremap gp <C-\><C-n>:tabp<CR>


" vim autocmd
" 配置vim打开时vim自动定位到上次的位置
if has("autocmd")
  autocmd BufRead *.txt set tw=78
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal g'\"" |
        \ endif
endif

" 判断文件类型
set cursorline

" 插件相关配置
let g:gitgutter_map_keys = 0 "关闭所有键位映射

" vim-autoformater
let g:formatdef_harttle = '"astyle --style=attach --pad-oper"'
let g:formatters_cpp = ['harttle']
let g:formatter_yapf_style = 'google'
noremap <leader>a :Autoformat<CR>

" indentLine
" 设置竖线颜色
let g:indentLine_color_gui = '#E64A19'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1
let g:indentLine_fileTypeExclude = ['json']
" indentLine 不在json文件中加载, 目的是显示双引号


" ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']


" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCreateDefaultMappings = 0
map <leader>z <plug>NERDCommenterToggle


" vim-isort
let g:vim_isort_map = ''
let g:vim_isort_python_version = 'python3'


" tagbar
let g:tagbar_width = 30
nmap <F8> :TagbarToggle<CR>

" YouCompleteMe
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_python_binary_path = 'python3'
" 输入两个字符后开始补全
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_server_keep_logfiles = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_max_num_candidates = 14
let g:ycm_max_num_identifier_candidates = 7
set completeopt=menu,menuone   " 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
nnoremap <leader>j :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>k :YcmCompleter GoToDefinition<CR>
nnoremap <leader>l :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>    "force recomile with syntastic
" 在插入模式下按两下leader退出插入模式
inoremap <leader><leader> <Esc>:w<CR>
" 在正常模式下按两下leader进入插入模式
noremap <leader><leader> a
inoremap <leader>x <Esc>xa
let g:ycm_cache_omnifunc=0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_show_diagnostics_ui = 0 "close syntax checked
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}
let g:ycm_semantic_triggers =  {
      \   'c' : ['->', '.'],
      \   'objc' : ['->', '.'],
      \   'cpp,objcpp' : ['->', '.', '::'],
      \   'perl' : ['->'],
      \   'php' : ['->', '::'],
      \   'cs,java,javascript,d,vim,ruby,python,perl6,scala,vb,elixir,go' : ['.'],
      \   'lua' : ['.', ':'],
      \   'erlang' : [':'],
      \   'css' : ['re!^\s{4}', 're!:\s+'],
      \   'html' : ['</'],
      \ }



" NERDTree setting
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1 " 是否显示隐藏文件
let NERDTreeWinSize=20 " 设置宽度
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" 按下 F2 调出/隐藏 NERDTree
map <F2> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
let g:NERDTreeIgnore = ['\.pyc$', '^__pycache__$', '\.git$', '^migrations$', 'node_modules', '^.pytest_cache$', '^.mypy_cache$']
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" lightline
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

let g:Lf_ReverseOrder = 1
let g:Lf_WindowHeight = 0.30
let g:Lf_CursorBlink = 0
let g:Lf_WildIgnore = {
      \ 'dir': ['.svn','.git','.hg', 'anaconda3', 'Download', 'node_modules', '.*', 'venv', 'migrations', '__pycache__'],
      \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[cod]']
      \}

set cursorcolumn
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkgreen guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkgreen guifg=white


" 打开文件自动跳转到上一次的光标位置
if has("autocmd")
  au BufReadPost * if line("`\"") > 1 && line("`\"") <= line("$") | exe "normal! g`\"" | endif
  " for simplicity, "  au BufReadPost * exe "normal! g`\"", is Okay.
endif

" 光标限制，尽量让你的工作区放置在屏幕当中
set scrolloff=24

" 解决tab冲突
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" 设置python文件的缩进长度
autocmd FileType python set sw=2
autocmd FileType python set ai
autocmd FileType python set ts=2
autocmd FileType python set sts=2
