source ~/.vim/bundles.vim
Plugin 'marijnh/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'

" 解决乱码
"set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on

"--------
" Vim UI
"--------
" color scheme
set background=dark
color solarized

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" search
set incsearch
"set highlight 	" conflict with highlight current line
set ignorecase
set smartcase

" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
"set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
" set relativenumber

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
"set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"-----------------
" Plugin settings
"-----------------
" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']

" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

" nerdcommenter
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

" ZenCoding
let g:user_emmet_expandabbr_key='<C-j>'

" powerline
"let g:Powerline_symbols = 'fancy'

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-F7> <Plug>(neocomplcache_snippets_force_expand)
smap <C-F7> <Plug>(neocomplcache_snippets_force_expand)
imap <C-F8> <Plug>(neocomplcache_snippets_force_jump)
smap <C-F8> <Plug>(neocomplcache_snippets_force_jump)
let g:snipMate = { 'snippet_version' : 1 }

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'

" SuperTab
" let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Keybindings for plugin toggle
"nnoremap <F2> :set invpaste paste?<CR>
"set pastetoggle=<F2>

nmap <F2> :!gvim %<cr>
nmap <F3> :NERDTreeToggle<cr>
nmap <F4> :TagbarToggle<cr>
"nmap <F7> :GundoToggle<cr>
nmap <F8> :IndentGuidesToggle<cr>
nmap  <D-/> :
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" sublime key bindings
nmap <D-]> >>
nmap <D-[> <<
vmap <D-[> <gv
vmap <D-]> >gv

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" for macvim
"if has("gui_running")
"    set go=aAce  " remove toolbar
"    "set transparency=30
"    set guifont=Monaco:h13
"    set showtabline=2
"    set columns=140
"    set lines=40
"    noremap <D-M-Left> :tabprevious<cr>
"    noremap <D-M-Right> :tabnext<cr>
"    map <D-1> 1gt
"    map <D-2> 2gt
"    map <D-3> 3gt
"    map <D-4> 4gt
"    map <D-5> 5gt
"    map <D-6> 6gt
"    map <D-7> 7gt
"    map <D-8> 8gt
"    map <D-9> 9gt
"    map <D-0> :tablast<CR>
"endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gvim/macvim设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if has("gui_running")
"    let system = system('uname -s')
"    if system == "Darwin\n"
"        set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete:h18 " 设置字体
"    else
"        set guifont=DroidSansMono\ Nerd\ Font\ Regular\ 18      " 设置字体
"    endif
"    set guioptions-=m           " 隐藏菜单栏
"    set guioptions-=T           " 隐藏工具栏
"    set guioptions-=L           " 隐藏左侧滚动条
"    set guioptions-=r           " 隐藏右侧滚动条
"    set guioptions-=b           " 隐藏底部滚动条
"    set showtabline=0           " 隐藏Tab栏
"    set guicursor=n-v-c:ver5    " 设置光标为竖线
"endif

"背景透明度跟随终端
hi Normal ctermfg=252 ctermbg=none

"NERDTree配置
"let g:NERDTreeFileExtensionHighlightFullName = 1
"let g:NERDTreeExactMatchHighlightFullName = 1
"let g:NERDTreePatternMatchHighlightFullName = 1
"let g:NERDTreeHighlightFolders = 1
"let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeDirArrowExpandable='▷' "目录前面的形状
let g:NERDTreeDirArrowCollapsible='▼'
let NERDTreeQuitOnOpen=1 "打开文件时关闭树
let NERDTreeShowBookmarks=1 "显示书签
let NERDTreeShowHidden=1 "显示隐藏

" change-colorscheme颜色配置快捷键
nnoremap <silent> <F9> :RandomColorScheme<cr>
inoremap <silent> <F9> <esc> :RandomColorScheme<cr>
nnoremap <silent> <F10> :ShowColorScheme<cr>
inoremap <silent> <F10> <esc> :ShowColorScheme<cr>
"nnoremap <silent> <F7> :PreviousColorScheme<cr>
"inoremap <silent> <F7> <esc> :PreviousColorScheme<cr>
"nnoremap <silent> <F8> :NextColorScheme<cr>
"inoremap <silent> <F8> <esc> :NextColorScheme<cr>

"编译函数
func CompileRun()
    exec "w"
"C程序
    if &filetype == 'c'
        exec "!time gcc % -g -Wall -o %<.out -lm"
"如果出现了错误 from auto-imported DLLs 就在 !gcc 后面加  -Wall --enable-auto-import
"c++程序
    elseif &filetype == 'cpp'
        exec "!time g++  % -g -o %<.out -lm"
"如果出现了错误 from auto-imported DLLs 就在 !g++ 后面加  -Wall --enable-auto-import
"Java程序
    elseif &filetype == 'java'
        exec "!time javac %"
"-------------go------------------
    elseif &filetype == 'go'
        exec "!time go build %<.go"
"----------mkd>>html--------------
    elseif &filetype == 'mkd'
        exec "!time ~/.vim/markdown.pl % > %.html &"

    endif
endfunc
"结束定义CompileRun

"定义Run运行函数
func Run()
    if &filetype == 'c' || &filetype == 'cpp'
        exec "!time ./%<.out"

"---------JAVA------------
    elseif &filetype == 'java'
        exec "!time java %<"

"-------------Python执行------------
    elseif &filetype == 'python'
"这里说明下这是执行python如果你想让python2.7执行就改python2.7 %<就可以
        exec "!time python3 %"

"----------bash----------------
    elseif &filetype == 'sh'
        :!time bash %

"-------------html----------------
    elseif &filetype =='html'
"这里说明一下如果你是用chrome就将下面firefox改chrome就行了
        exec "!time firefox % &"

"-------------go------------------
    elseif &filetype == 'go'
        exec "!time go run %"

"----------mkd>>html--------------
    elseif &filetype == 'mkd'
        exec "!firefox %.html &"

"----------php--------------------
    elseif &filetype == 'php'
        exec "!time php %"

    endif
endfunc

"定义Debug函数，用来调试程序
func Debug()
    exec "w"
"C程序
    if &filetype == 'c'
        exec "!gcc % -g -o %<.out -lm"
        exec "!time gdb %<.out"
    elseif &filetype == 'cpp'
        exec "!g++ % -g -o %<.out -lm"
        exec "!time gdb %<.out"
"Java程序
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time jdb %<"
    endif
endfunc
"结束定义Debug

"设置程序的运行和调试的快捷键F5和Ctrl-F5
map <F5> :call CompileRun()<CR>
map <F6> :call Run()<CR>
map <C-F5> :call Debug()<CR>

"=======================YouCompleteMe补全配置==========================
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_previous_completion=['<c-p>']

let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=1 " 从第1个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0 " 禁止缓存匹配项,每次都重新生成匹配项

let g:ycm_seed_identifiers_with_syntax=1 " 语法关键字补全
"nnoremap <F7> :YcmForceCompileAndDiagnostics<CR>
"nnoremap <leader>lo :lopen<CR> "open locationlist
"nnoremap <leader>lc :lclose<CR>    "close locationlist

"inoremap <leader><leader> <C-x><C-o>
let g:ycm_complete_in_comments = 1 "在注释输入中也能补全
let g:ycm_complete_in_strings = 1 "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0 "注释和字符串中的文字也会被收入补全

let g:ycm_max_num_identifier_candidates =50
let g:ycm_auto_trigger = 1

let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>'

"highlight Pmenu ctermfg=4 ctermbg=0 guifg=#ffffff guibg=#000000  "提示不再是粉红色(pink)
"highlight Pmenu ctermfg=4 ctermbg=8 guifg=#FF0000 guibg=#FFFFFF
"CSS补全
let g:ycm_semantic_triggers = {
   "\   'css': [ 're!^\s{4}', 're!:\s+' ],"
   \ }
"JS补全
let g:ycm_semantic_triggers = {
    \ 'javascript': [ 're!^\s{4}', 're!:\s+' ],
    \ }
"=======================YouCompleteMe补全配置==========================
"
set clipboard+=unnamed "共享粘贴板
"自动补全基本设定
"":inoremap ( ()<ESC>i
"":inoremap ) <c-r>=ClosePair(')')<CR>
"":inoremap { {<CR>}<ESC>O
"":inoremap } <c-r>=ClosePair('}')<CR>
"":inoremap [ []<ESC>i
"":inoremap ] <c-r>=ClosePair(']')<CR>
"":inoremap " ""<ESC>i
"":inoremap ' ''<ESC>i
""function! ClosePair(char)
""    if getline('.')[col('.') - 1] == a:char
""        return "\<Right>"
""    else
""        return a:char
""    endif
""endfunction
"打开文件类型检测，加载特定的缩进。
filetype plugin indent on
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu

"=============新建.c,.h,.sh,.java文件，自动插入文件头
"autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.html exec ":call SetTitle()"
autocmd BufNewFile *.sh,*.html,*.js,*.c,*.h,*.cpp  exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头
func SetTitle()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1,"\############################")
        call append(line("."), "\# File Name: ".expand("%"))
        call append(line(".")+1, "\# Author: Pudge")
        call append(line(".")+2, "\# Mail: EternalNight996@gmail.com")
        call append(line(".")+3, "\# Created Time: ".strftime("%c"))
        call append(line(".")+4, "\############################")
        call append(line(".")+5, "\#!/bin/bash")
        call append(line(".")+6, "")
    elseif &filetype == 'html'
        call setline(1,"<!--************************************************-->")
        call append(line("."), "<!--*File Name: ".expand("%"))
        call append(line(".")+1, "* Author: Pudge")
        call append(line(".")+2, "* Mail: EternalNight996@gmail.com")
        call append(line(".")+3, "* Created Time: ".strftime("%c"))
        call append(line(".")+4, "-->")
        call append(line(".")+5, "<!DOCTYPE html>")
        call append(line(".")+6, "<html lang=\"en\">")
        call append(line(".")+7, "<head>")
        call append(line(".")+8, "  <meta charset=\"utf-8\" />")
        call append(line(".")+9, "</head>")
        call append(line(".")+10, "<body>")
        call append(line(".")+11, "</body>")
        call append(line(".")+12, "</html>")
    elseif &filetype == 'c' || &filetype == 'cpp'
        call setline(1,"/* ************************************************ */")
        call append(line("."), "/*File Name: ".expand("%"))
        call append(line(".")+1, "* Author: Pudge")
        call append(line(".")+2, "* Mail: EternalNight996@gmail.com")
        call append(line(".")+3, "* Created Time: ".strftime("%c"))
        call append(line(".")+4, "*/")
    elseif &filetype == 'javascript'
        call setline(1,"/* ************************************************ */")
        call append(line("."), "/*File Name: ".expand("%"))
        call append(line(".")+1, "* Author: Pudge")
        call append(line(".")+2, "* Mail: EternalNight996@gmail.com")
        call append(line(".")+3, "* Created Time: ".strftime("%c"))
        call append(line(".")+4, "*/")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc

