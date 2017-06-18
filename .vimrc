set nocp
set ru
set hls
syntax on
set number
set background=dark
set history=1000
set tabstop=4
set shiftwidth=4
set softtabstop=4
set fileencoding=utf-8
set fileencodings=utf-8,gbk
set mouse=
set incsearch
set autoindent

"自动补全
filetype plugin indent on
set noexpandtab
set completeopt=longest,menu
"自动补全命令时候使用菜单匹配列表
set wildmenu

"autocmd FileType python set omnifunc=pythoncomplete#Complete

let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'


let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Open=0

set nobackup


set laststatus=2
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 13
let g:airline_powerline_fonts = 1
"let g:airline_theme='airlineish'
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tavline#enabled = 1

nnoremap <silent> <F3> :Grep<CR>
"let Grep_Default_Options = '-rw'
let Grep_Default_Options = "--exclude tags --exclude=*\.svn* --exclude=*\.swp --exclude=entries --exclude=all-wcprops --exclude=*\.tmp --exclude=*\*.session --color=auto -rI"
"let Grep_Default_Filelist = '*.xml defs/*.xml defs/*.def defs/*/*.def *.py */*.py */*/*.py */*/*/*.py */*/*/*/*.py'
"let Grep_Default_Filelist = '.'
"let Grep_Skip_Files = '*.pyc *.svn-base *.tmp'
"let Grep_Skip_Dirs = 'base/.svn .svn'

nnoremap <C-p> "0p<CR>
nnoremap <C-d> "-p<CR>
"map <F4> :q<CR>

map <C-1> :b 1

let mapleader = "\\"
"map <leader>F :FufFile<CR>
map <C-e> :FufTaggedFile<CR>
map <C-g> :FufTag<CR>

"let g:LookupFile_TagExpr ='"/Users/henry/work/admin-webapp/src/filenametags"'


map <F11> :!/bin/bash %
map <F12> :!python %
map <F10> :!node %


let g:pyflakes_use_quickfix = 0
map <F4> :let g:pyflakes_use_quickfix = 0

"nnoremap <F5>   <Esc>:w<CR>:!g++ -lpthread -I$BOOST_ROOT -std=c++11 % -o /tmp/a.out && /tmp/a.out<CR>
"nnoremap <F5>   <Esc>:w<CR>:!g++ -lpthread -I/home/lypn2216/boost/boost_1_46_1 -std=c++11 % -o /tmp/a.out && /tmp/a.out<CR>
nnoremap <F6>   <Esc>:w<CR>:!g++ -lpthread -I/home/lypn2216/boost/boost_1_46_1 -std=c++11 % -o /tmp/a.out && /tmp/a.out /home/lypn2216/boost/boost_1_46_1/stage/lib/libboost_date_time.a<CR>
nnoremap <F7>   <Esc>:w<CR>:!g++ -lpthread -std=c++11 %<CR>
nnoremap <C-F5> <Esc>:w<CR>:!g++ -lpthread -std=c++11 -g % -o /tmp/a.out && gdb /tmp/a.out<CR>

let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.

"lyp
"vim name
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Visual-Mark'
Bundle 'winmanager'
"github name
Plugin 'vim-scripts/grep.vim'
Plugin 'vim-scripts/taglist-plus'
Plugin 'vim-scripts/mru.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/minibufexplorerpp'
"Plugin 'vim-scripts/lookupfile'
"Plugin 'vim-scripts/genutils'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


