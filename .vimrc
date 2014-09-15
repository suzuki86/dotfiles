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

set nocompatible               " Be iMproved

if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tomasr/molokai'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'cocopon/lightline-hybrid.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'kien/ctrlp.vim'

" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github

filetype plugin indent on     " Required!

" Installation check.
NeoBundleCheck

" Use molokai
colorscheme molokai

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
