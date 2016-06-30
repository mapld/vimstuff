syntax on
set background=dark
colorscheme badwolf

set nocompatible
filetype off

source ~/.vim/simplenote.rc
" let g:SimplenoteUsername = "username"
" let g:SimplenotePassword = "password"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

Plugin 'easymotion/vim-easymotion'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'

Plugin 'Raimondi/delimitMate'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'Valloric/YouCompleteMe'

Plugin 'joonty/vdebug'

Plugin 'mrtazz/simplenote.vim'

call vundle#end()
filetype plugin indent on 

set backspace=indent,eol,start  " backspace for dummys
set tabstop=4 " set tabwidth to 4
set softtabstop=4 " backspace delete
set shiftwidth=4 " set > indent to 4
set expandtab " map tab to 4 spaces

set number " show line numbers
set relativenumber

set showcmd " show last command at bottom

set cursorline " highlight current line

set wildmenu  " visual autocomplete for command menu

set incsearch " search incrementally as characters are exposed
set hlsearch  " highlight matches

" Set to 1 to let CtrlP show hidden files
let g:ctrlp_show_hidden = 0 



" map beginning and end of line
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

nnoremap Y y$

vnoremap B ^
vnoremap E $
vnoremap $ <nop>
vnoremap ^ <nop>

cmap W w
cmap WQ wq
cmap Wq wq

let mapleader=","

nnoremap ; :

inoremap jk <esc>
inoremap kj <esc>


let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <BS> :TmuxNavigateLeft<cr> 
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" clear highlights from search
nnoremap <leader>ch :nohlsearch<CR>

" open vimrc
nnoremap <leader>rc :vsp $MYVIMRC<CR>

" save vim session
nnoremap <leader>s :mksession! ~/mysession.vim<CR>

" grep mappings
nnoremap <leader>cn :cn<CR>
nnoremap <leader>cp :cp<CR>
nnoremap <leader>cl :cl<CR>

" load vim session
nnoremap <leader>l :source ~/mysession.vim<CR>

" cycle tabs
nnoremap <leader>t :tabnext<CR>

" open NERDtree
nnoremap <leader>nt :NERDTree<CR>

" YCM python goto
map <leader>g :YcmCompleter GoTo<CR>

" Lazy mans plugin install
map <leader>pi :PluginInstall<CR>

" relative and absolute numbers
map <leader>rn :set relativenumber<CR>
map <leader>an :set relativenumber!<CR>

" simplenote
nnoremap <leader>sn :Simplenote 
nnoremap <leader>snl :Simplenote -l<CR>
nnoremap <leader>snd :Simplenote -d<CR>
nnoremap <leader>snn :Simplenote -n<CR>
nnoremap <leader>snt :Simplenote -t<CR>
