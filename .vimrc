set backspace=2

syntax on 
syntax enable
set mouse=a
set mousehide
set encoding=utf-8
scriptencoding utf-8
set backup "undo?
"inoremap { {<CR>}<ESC>O
""花括号匹配相关
inoremap { {}<ESC>i
inoremap {<CR> {<CR>}<ESC>O
set cursorline "高亮当前行
set number "行数
set autoindent "自动缩进
set smartindent "智能缩进
set cindent "C系列缩进
set softtabstop=4 "缩进长度
set shiftwidth=4 "缩进长度
set tabstop=4 "tab键长度
set expandtab "tab设为空格
set softtabstop=4 "缩进长度
colorscheme desert "配色沙漠 还有: torte, solarized, molokai, phd, ron, evening  等经典配色
set showmatch "自动匹配
" set ruler "在右下角显示当前行信息
set incsearch "搜索加强
set hlsearch "搜索高亮
set guioptions-=T "一出工具栏
set showcmd "显示出输入的命令
set guifont=Menlo:h15 "字体和大小
set lines=55 "窗口多长，下为多宽
set columns=100
set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
" set scrolloff=3 "光标移动到上下两端,保持3行距离
set history=1000 "历史记录条数从20到1000
set autowrite "自动保存
set guioptions-=m "隐藏菜单栏
set ignorecase "搜索忽略大小写
filetype plugin indent on "自动检测文件类型并启动相关缩进插件
filetype plugin on "不同文件类型加载相应插件
filetype on "检查文件类型
set cmdheight=2 "命令行高度加1
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" " 关闭兼容模式
"set nocompatible
" " vim 自身命令行模式智能补全
set wildmenu


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" let g:ycm_clangd_binary_path = "/usr/local/bin/clangd"
"  "youcompleteme  默认tab  s-tab 和 ultisnips 冲突
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

noremap <c-z> <NOP>
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']"
let g:ycm_semantic_triggers =  {
            \ 'c,cpp<Plug>PeepOpenython,java,go,erlang<Plug>PeepOpenerl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>
let g:ycm_goto_buffer_command = 'vertical-split'
