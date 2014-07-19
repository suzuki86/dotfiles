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

" Enable NeoComplCache
let g:neocomplcache_enable_at_startup = 1

"検索結果をハイライトする
set hlsearch

"シンタックスハイライトを有効にする
syntax on

"インデントを実行しても選択を解除しない
vnoremap <silent> > >gv
vnoremap <silent> < <gv

"vimgrepの検索結果を自動的にQuickFixWindowsを開く
au QuickfixCmdPost vimgrep cw

"インサートモードを抜けたら自動的にIMEをOFFにする
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

"インサートモードでもh,j,k,lで移動可能にする
imap <c-h> <LEFT>
imap <c-j> <DOWN>
imap <c-k> <UP>
imap <c-l> <Right>

"対応する括弧をハイライトする
set showmatch

"自動インデントを有効にする
set autoindent

"スマートインデントを有効する
set smartindent

"行番号を表示する
set number

"タブをスペースに置き換える
set expandtab

"タブを2文字分で表示させる
set tabstop=2

"自動挿入されるタブを2文字分で表示させる
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
