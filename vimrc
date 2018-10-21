" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

"set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
"winpos 5 5          " 设定窗口位置  
"set lines=40 columns=155    " 设定窗口大小  
"set nu              " 显示行号  

"load dictionary
au FileType c setlocal dict+=~/.vim/dict/c.dict
au FileType cpp setlocal dict+=~/.vim/dict/cpp.dict

set go=             " 不要图形按钮  
"color asmanian2     " 设置背景主题  
set guifont=Courier_New:h10:cANSI   " 设置字体  
"syntax on           " 语法高亮  
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
autocmd InsertEnter * se cul    " 用浅色高亮当前行  
"set ruler           " 显示标尺  
set showcmd         " 输入的命令显示出来，看的清楚些  
"set cmdheight=1     " 命令行（在状态行下）的高度，设置为1  
"set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
"set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set novisualbell    " 不要闪烁(不明白)  
set statusline=%F%m%r%h%w\ [Format=%{&ff}]\ [FileType=%Y]\ [POS=%l/%L,%v][%p%%]\ %{strftime(\"%Y/%m/%d\ -\ %H:%M:%S\")}
set laststatus=1    " 启动显示状态行(1),总是显示状态行(2)  
"set foldenable      " 允许折叠  
"set nofoldenable      " 允许折叠  
"set foldmethod=manual   " 手动折叠  
set cinoptions=g0 "自动对齐public,private 格式
"set background=dark "背景使用黑色 
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif
" 设置配色方案
let g:solarized_termcolors=256
set t_Co=256 
set background=dark
colorscheme solarized
"colorscheme Light
"colorscheme c 
"colorscheme molokai
"colorscheme phd
"字体 
"if (has("gui_running")) 
"   set guifont=Bitstream\ Vera\ Sans\ Mono\ 10 
"endif 
 

set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全 
set completeopt=preview,menu 
"允许插件  
filetype plugin on
"共享剪贴板  
set clipboard+=unnamed 
"make 运行
set makeprg=make\ -C\ .
":set makeprg=g++\ -Wall\ \ %
"自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
" 设置在状态行显示的信息
set foldcolumn=0
"set foldmethod=indent 
set foldlevel=3 
"set foldenable              " 开始折叠
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 语法高亮
set syntax=on
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为o
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
" set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 我的状态行显示的内容（包括文件类型和解码）
" 总是显示状态行
set laststatus=2
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
" set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 为C程序提供自动缩进
set smartindent
" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt

"记录退出位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif"'")>"'")"'")

filetype plugin indent on 
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags的设定  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function Settags()
	
	let curdir = getcwd()

	if filereadable("tags")
		execute "set tags=" . getcwd() . "/tags"
	else 
		execute "set tags=~/tags"
	endif

endfunction

let Tlist_Sort_Type = "name"    " 按照名称排序  
let Tlist_Use_Right_Window = 1  " 在右侧显示窗口  
let Tlist_Compart_Format = 1    " 压缩方式  
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  
let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  
"let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的
"设置tags  
"set tags+=~/WorkSpace/EarthViewServer_Makefile/EarthViewServer/tags
"set tags+=./tags
"set autochdir 
call Settags()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"其他东东
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"默认打开Taglist 
let Tlist_Auto_Open=1 
"""""""""""""""""""""""""""""" 
" Tag list (ctags) 
"""""""""""""""""""""""""""""""" 
let Tlist_Ctags_Cmd = '/usr/bin/ctags' 
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的 
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim 
let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口
" minibufexpl插件的一般设置
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1   
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CSCOPE 配置
if has("cscope")
             set cscopetag   " 使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳来跳去
             " check cscope for definition of a symbol before checking ctags:
             " set to 1 if you want the reverse search order.
             set csto=1

             " add any cscope database in current directory
             if filereadable("cscope.out")
                 cs add cscope.out
            " else add the database pointed to by environment variable
             elseif $CSCOPE_DB !=""
                 cs add $CSCOPE_DB
			 else 
				 cs add /home/centos/WorkSpace/EarthViewServer_Makefile/EarthViewServer/cscope.out
             endif

            " show msg when any other cscope db added
             set cscopeverbose

			 "c 查找调用本函数的函数
			 "d 查找本函数调用的函数
			 "e 查找egrep 模式， 相当于egrep 功能， 但查找速度快多了
			 "f 查找并打开文件
			 "g 查找函数， 宏， 等 定义
			 "I 查找包含本文件的文件
			 "s 查找C语言的符号， 即查找函数名， 宏等出现 过的地方
			 "t 查找指定的字符串
             nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
             nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
             nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
             nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
             nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
             nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
             nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
             nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
         endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERD_tree 目录树插件
let NERDTreeQuitOnOpen=0 "当打开文件时关闭目录树窗口
let NERDTreeSortOrder=['//$','/.cpp$','/.c$','/.pc$','/.h$', '*']
map <C-n> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""Bundle""""""""""""""""""""""""""""""""""
":BundleList         -列举列表(也就是.vimrc)中配置的所有插件
":BundleInstall      -安装列表中的全部插件
":BundleInstall!     -更新列表中的全部插件
":BundleSearch foo   -查找foo插件
":BundleSearch! foo  -刷新foo插件缓存
":BundleClean        -清除列表中没有的插件
":BundleClean!       -清除列表中没有的插件

"set nocompatible               " be iMproved
"filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/Vundle.vim'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"可视化的方式能将相同缩进的代码关联起来，Indent Guides
"Bundle 'Yggdroot/indentLine'
"let g:indentLine_char = '┊'
"ndle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'Auto-Pairs'
Bundle 'CaptureClipboard'
Bundle 'ctrlp-modified.vim'
Bundle 'last_edit_marker.vim'
Bundle 'synmark.vim'
Bundle 'Python-mode-klen'
"Bundle 'SQLComplete.vim'
Bundle 'Javascript-OmniCompletion-with-YUI-and-j'
"Bundle 'JavaScript-Indent'
"Bundle 'Better-Javascript-Indentation'
Bundle 'jslint.vim'
Bundle "pangloss/vim-javascript"
Bundle 'ctrlp.vim'
Bundle 'a.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'jsbeautify'
Bundle 'The-NERD-Commenter'
Bundle  'WolfgangMehner/vim-plugins'
"django
Bundle 'django_templates.vim'
Bundle 'Django-Projects'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-scripts/matchit.zip'
Bundle 'davidhalter/jedi-vim'
Bundle 'chiel92/vim-autoformat'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'tpope/vim-surround'
Bundle 'ekalinin/Dockerfile.vim'

"Bundle 'artur-shaik/vim-javacomplete2'
"Bundle 'powerline/powerline'
"Bundle 'FredKSchott/CoVim'
"Bundle 'djangojump'
" ...

"""""""""""""""""""""YCM""""""""""""""""""""""""""""""
set completeopt=longest,menu        "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
" 菜单
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
"" 选中项
highlight PmenuSel ctermfg=1 ctermbg=3 guifg=#AFD700 guibg=#106900
autocmd InsertLeave * if pumvisible() == 0|pclose|endif        "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"        "回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1        " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=1        " 从第1个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0        " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1        " 语法关键字补全
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>        "force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>        "open locationlist
"nnoremap <leader>lc :lclose<CR>        "close locationlist

"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

let g:ycm_echo_current_diagnostic = 1


let g:ycm_global_ycm_extra_conf ='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/ycm_extra_conf.py'

let mapleader=","
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
"apply YCM fixit
nnoremap <silent> <Leader>yd :YcmCompleter GetDoc<CR>
nnoremap <silent> <Leader>jf :YcmCompleter FixIt<CR>
nnoremap <silent> <Leader>jg :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>jt :YcmCompleter GetType<CR>

"nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
"nnoremap <leader>je :YcmCompleter GoToDefinition<CR>

let g:Templates_MapInUseWarn = 1 

"java 补全
let g:EclimCompletionMethod = 'omnifunc'

"let g:syntastic_python_flake8_args = '--ignore=W191,E501,E128,W291,E126,E101'
"let b:syntastic_checkers = ['flake8']
"unlet! g:python_space_error_highlight
"let g:pymode_syntax_indent_errors = 0
"let g:pymode_syntax_space_errors = 0

"powerline
"set rtp+=/usr/lib/python2.7/site-packages/powerline_status-2.3.dev9999_git.59e66dca32f2bf17cb7cabec80b3c8d729795266-py2.7.egg/powerline/bindings/vim

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll|o|pyc|cache-3)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }

let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript', 
	\ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']

nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :source $MYVIMRC<CR>

iabbrev cplusheaders #include <iostream><CR>#include <string><CR>
iabbrev #i #include <>
iabbrev stdv std::vector<>
iabbrev stds std::string 
iabbrev stdl std::list<>
iabbrev stdm std::map<>
"ctrlp config
let g:ctrlp_root_markers = ['.ctrlp']
let g:CtrlP_cmd = 'CtrlPBuffer'
let g:CtrlP_cmd = 'CtrlPMRU'

nnoremap <silent> <leader>mr :CtrlPMRU<CR>
nnoremap <silent> <leader>lb :CtrlPBuffer<CR>
