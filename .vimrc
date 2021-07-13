if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	\| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'cocopon/iceberg.vim', { 'as': 'iceberg' }

Plug 'preservim/nerdtree'

call plug#end()

syntax enable
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showmatch
set laststatus=2
set so=999
set t_Co=256
colorscheme iceberg 
set bg=dark
set number
command Indent normal gg=G

set backspace=indent,eol,start
syntax on
filetype plugin indent on
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
map <C-n> :NERDTreeToggle<CR>
