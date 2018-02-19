set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/vimproc'
Plugin 'thinca/vim-quickrun'
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/unite.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/matchit.zip'
Plugin 'scrooloose/nerdcommenter'
Plugin 'itchyny/lightline.vim'
Plugin 'cocopon/lightline-hybrid.vim'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'dracula/vim'
" Plugin 'tomasr/molokai'

call vundle#end()
filetype plugin indent on

" Enable to toggle relativenumber.
nnoremap <silent><leader>n :set relativenumber!<cr>

" Configure easymotion.
nmap s <Plug>(easymotion-s2)

" Use tree view.
let g:netrw_liststyle = 3

" Configure lightline.
set laststatus=2
let g:lightline = {}  
let g:lightline.colorscheme = 'hybrid'

set t_Co=256

" Disable to generate swapfile.
set noswapfile

" Disable to generate backupfile.
set nobackup

" Open new windows to the right.
set splitright

" Enable NeoComplCache.
let g:neocomplcache_enable_at_startup = 1

" Highlight keywords when searching.
set hlsearch

" Enable Syntax Highlight.
syntax on

" Continue to select when selcted area are indented.
vnoremap <silent> > >gv
vnoremap <silent> < <gv

" Open in QuickFixWindow when executing vimgrep
au QuickfixCmdPost vimgrep cw

" Disable IME when escaping insert mode.
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

" Enable h,j,k,l keys to move cursor in insert mode.
imap <c-h> <LEFT>
imap <c-j> <DOWN>
imap <c-k> <UP>
imap <c-l> <Right>

" Highlight corresponding bracket.
set showmatch

" Enable autoindent.
set autoindent

" Enable smartindent.
set smartindent

" Show line number.
set number

" Replace tabs to spaces.
set expandtab

" Show two spaces instead of a tab.
set tabstop=2

" Insert two spaces instead of a tab automatically.
set shiftwidth=2

"
set softtabstop=0

" Use molokai
" colorscheme molokai
colorscheme dracula

" Configure quickrun
augroup QuickRunPHPUnit
  autocmd!
  autocmd BufWinEnter,BufNewFile *Test.php set filetype=php.phpunit
augroup END 

augroup QuickRunRSpec
  autocmd!
  autocmd BufWinEnter,BufNewFile *_spec.rb set filetype=ruby.rspec
augroup END 

let g:quickrun_config = {}
let g:quickrun_config['php.phpunit'] = {'command': 'phpunit'}
let g:quickrun_config['ruby.rspec'] = {'command': 'rspec'}

set clipboard=unnamedplus
