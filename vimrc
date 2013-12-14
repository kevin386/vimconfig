"设置行号
set nu

"不生成备份文件"
set nobackup
set noswapfile
"set backupdir=$VIMDATA/backup
"set directory=$VIMDATA/temp

" 设置自动编码识别，中文引号显示
set fileencodings=utf-8,gbk
set ambiwidth=double

" 主题
colorscheme desert
set background=dark

"自动补全
filetype plugin indent on
set completeopt=longest,menu

"自动补全时候使用菜单形式匹配类表
set wildmenu

"语法高亮
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType java set omnifunc=xmlcomplete#Complete

"搜索逐字高亮
set hlsearch
set incsearch

"自动缩进4个空格
set shiftwidth=4

"定义tab所等同点空格长度
set tabstop=4

"表示让tab点宽度显示成和4个空格点宽度一样
set softtabstop=4

"高亮显示匹配点括号
set showmatch

"设置当文件从外部被改动时自动载入
set autoread

""for vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

filetype plugin indent on
filetype plugin on

"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'bufexplorer.zip'
"Bundle 'Tagbar'
"Bundle 'Mark'
"Bundle 'The-NERD-tree'
"Bundle 'matrix.vim'
"Bundle 'closetag.vim'
"Bundle 'The-NERD-Commenter'
"Bundle 'matchit.zip'
"Bundle 'AutoComplPop'
"Bundle 'jsbeautify'
"Bundle 'YankRing.vim'


" original repos on github<br>Bundle 'mattn/zencoding-vim'
Bundle 'drmingdrmer/xptemplate'
 
" vim-scripts repos
"Vim-script library
Bundle 'L9'
"buffer/file/command/tag/etc explorer with fuzzy matching
Bundle 'FuzzyFinder'
"Buffer Explorer / Browser
Bundle 'bufexplorer.zip'
"Display tags of the current file ordered by scope
Bundle 'Tagbar'
"a little script to highlight several words in different colors simultaneously
Bundle 'Mark'
"A tree explorer plugin for navigating the filesystem
Bundle 'The-NERD-tree'
"MATRIX like colorscheme
Bundle 'matrix.vim'
"Functions and mappings to close open HTML/XML tags
Bundle 'closetag.vim'
"A plugin that allows for easy commenting of code for many filetypes.
Bundle 'The-NERD-Commenter'
"extended % matching for HTML, LaTeX, and many other languages
Bundle 'matchit.zip'
"Automatically opens popup menu for completions
Bundle 'AutoComplPop'
"a javascript source code formatter
Bundle 'jsbeautify'
"Bundle 'einars/js-beautify'
"Bundle 'maksimr/vim-jsbeautify'
"Maintains a history of previous yanks, changes and deletes
Bundle 'YankRing.vim'

"PowerLine插件 状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
"vim有一个状态栏 加上powline则有两个状态栏
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'

" nerdtree
"Bundle 'scrooloose/nerdtree'
"nnoremap <silent><F2> :NERDTreeToggle<cr>
"imap <F2> <Esc>:NERDTreeToggle<cr>
let NERDTreeIgnore=['\.o$', '\.ko$', '\.symvers$', '\.order$', '\.mod.c$', '\.swp$', '\.bak$', '\~$']
let NERDTreeSortOrder=['\/$', 'Makefile', 'makefile', '\.c$', '\.cc$', '\.cpp$', '\.h$', '*', '\~$']
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1
"let NERDTreeWinPos = 'right'
let NERDTreeWinSize = 20

"默认打开NERDTree
"autocmd VimEnter * NERDTree
nnoremap <silent> <F3> :NERDTreeToggle<CR>

"Bundle 'majutsushi/tagbar'
"nnoremap <silent><F9> :TagbarToggle<cr>
"imap <F9> <Esc>:TagbarToggle<cr>
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_indent = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_width = 20
"TagbarToggle
nnoremap <silent> <F4> :TagbarToggle<CR>
"tags的查找目录，如果当前目录找不到，自动回溯查找
set tags=tags;
set autochdir
"生成一个tags文件
nmap <F9> <Esc>:!ctags -R *<CR> 

"Tab-complete your Python code
Bundle 'Pydiction'
let g:pydiction_menu_height=20
let g:pydiction_location='~/.vim/bundle/Pydiction/complete-dict'

"winmanager
Bundle 'winmanager'

"""""""""""""""""""""
" winManager setting
" """""""""""""""""""""
"let g:winManagerWindowLayout = "MiniBufExplorer,NERDTree|Tagbar"
"let g:winManagerWidth = 20
"let g:defaultExplorer = 0


"DelimitMate插件提供补全 (),{},[],'',"" 功能，删除时也可自动匹配删除
Bundle 'Raimondi/delimitMate'

"CtrlP插件提供模糊快速查找文件功能，只要输入文件大概的名字，CtrlP会在根目录下查找文件，采用模糊匹配。这比在NerdTree中查找快捷，比较适合于大型工程代码浏览。根目录可以是：当前目录，父目录，打开CtrlP时指定的目录，打开的Buffer和历史文件等。
" CtrlP for file searching
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-h>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
\ 'dir': '\v[\/]\.(git|hg|svn)$',
\ 'file': '\v\.(o|ko|so|obj|dll|exe)$',
\ 'link': 'some_bad_symbolic_links',
\ }
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_bottom=1


"miniBufExpl插件提供多文件Buffer显示功能，在一个窗口内显示所有打开的文件，类似于Windows下的File Tab。miniBufExpl原作者不在更新此插件，好在还有网友继续完善提高此插件，并将它托管到GitHub上。
Bundle "fholgado/minibufexpl.vim"
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-Down> <C-W>j
noremap <C-Up> <C-W>k
noremap <C-Left> <C-W>h
noremap <C-Right> <C-W>l
noremap <C-L> <C-W>l
noremap <C-TAB> :MBEbn<CR>
noremap <C-S-TAB> :MBEbp<CR>
let g:miniBufExplBuffersNeeded = 0
let g:miniBufExplCycleArround = 1

"Syntastic插件提供静态语法检查，它支持多种语言，具体使用方法参看帮助文档。
Bundle 'scrooloose/syntastic'

".vimrc
map  :call JsBeautify()
" or
autocmd FileType javascript noremap  :call JsBeautify()
" for html
autocmd FileType html noremap  :call HtmlBeautify()
" for css or scss
autocmd FileType css noremap  :call CSSBeautify()

"python语法检查
Bundle 'https://github.com/kevinw/pyflakes-vim.git'
