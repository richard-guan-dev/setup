filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"补全 python
Plugin 'davidhalter/jedi'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Bundle 'christoomey/vim-run-interactive'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'
Bundle 'taglist.vim'
Bundle 'rdnetto/YCM-Generator'
Bundle 'vim-airline/vim-airline'
Bundle 'https://github.com/taketwo/vim-ros.git'
Bundle 'luochen1990/rainbow'

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
" Put your non-Plugin stuff after this line
"colorscheme badwolf
let g:ycm_semantic_triggers = {
            \   'roslaunch' : ['="', '$(', '/'],
            \   'rosmsg,rossrv,rosaction' : ['re!^', '/'],
            \ }

set shell=/bin/bash
colorscheme github
syntax enable 
let mapleader=";"  
set mouse=a
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set number 
set showcmd
"set cursorline 
filetype indent on 
set wildmenu
set lazyredraw  
set showmatch 
set incsearch 
set hlsearch 
nnoremap <leader><space> :nohlsearch<CR>
nnoremap j gj
nnoremap QQ :qa!<enter> 
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap gV `[v`]
nnoremap <silent> <F12> :A<CR>
nmap <F6> :cp<cr>
nmap <F7> :cn<cr>
inoremap jk <esc>

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<C-n', '<Down>']
let g:ycm_key_list_select_previous_completion = ['<C-p>', '<Up>']
let g:ycm_confirm_extra_conf = 0
let g:airline_powerline_fonts = 1
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

let Tlist_Show_One_File = 1           
let Tlist_Exit_OnlyWindow = 1          
let Tlist_Use_Right_Window = 0         
let Tlist_File_Fold_Auto_Close=1       
let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Process_File_Always = 1
let Tlist_Display_Prototype = 0
let Tlist_Compact_Format = 1

" NERD tree
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" autocmd vimenter * NERDTree
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <leader>ff :NERDTreeToggle<cr>

nnoremap <leader>r :RunInInteractiveShell<space>
"if &term =~ "xterm"
"    " SecureCRT versions prior to 6.1.x do not support 4-digit DECSET
"    "     let &t_ti = "\<Esc>[?1049h"
"    "     let &t_te = "\<Esc>[?1049l"
"    " Use 2-digit DECSET instead
"    let &t_ti = "\<Esc>[?47h"
"    let &t_te = "\<Esc>[?47l"
"endif
"
autocmd VimLeave * :!open -a Terminal

" powerline config
set nocompatible
set t_Co=256

set laststatus=2 
set guifont=Roboto\ Mono\ Light\ for\ Powerline:h12 
set noshowmode
" done 

set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
let g:rainbow_active = 1
