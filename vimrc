" for display to display properly
set rtp+=/home/chief/.local/lib/python2.7/site-packages/powerline/bindings/vim
set nocompatible
set t_Co=256

" custom user preferences
" remaps first
let mapleader=" "
inoremap jk <esc>
set number
set hidden  " hide buffers instead of closing them
set nobackup
set title
set noswapfile
set tabstop=4
set shiftwidth=4
set autoindent
set preserveindent
set shiftround
set smarttab
set autoread
set foldenable
set foldlevelstart=7
set foldnestmax=10
nnoremap <space> za " space key now opens/closes folds
set smartcase
set showmatch
set hlsearch
set incsearch

nnoremap <leader><space> :nohlsearch<CR>

" plugin manager
execute pathogen#infect()

if &t_Co > 2 || has("gui_running")
	" switch syntax highlighting on, when the terminal has colors
 	syntax on
	colorscheme badwolf
endif

" plugin settings
let g:jsx_ext_required=0 " react and jsx
au BufReadPost *.prisma set syntax=graphql

" for powerline
set laststatus=2
set showtabline=2

" file explorer
map <leader>k :E<cr>
