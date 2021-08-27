if has('python3')          
endif

" Default settings

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set undodir=~/.vim/undodir
set incsearch

" PLUGINS

call plug#begin('~/.vim/plugged')

" Look & Feel
Plug 'morhetz/gruvbox'
Plug 'prettier/vim-prettier'
Plug 'frazrepo/vim-rainbow'
Plug 'ryanoasis/vim-devicons'
Plug 'segeljakt/vim-silicon'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'suan/vim-instant-markdown'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'enricobacis/vim-airline-clock'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'junegunn/goyo.vim'
Plug 'turbio/bracey.vim'
Plug 'potatoesmaster/i3-vim-syntax'
Plug 'vim-python/python-syntax'
Plug 'ap/vim-css-color'
Plug 'junegunn/vim-emoji'
Plug 'vimwiki/vimwiki'

call plug#end()

" colorscheme
colorscheme gruvbox
set background=dark

" Carbon-now-sh
vnoremap <F5> :CarbonNowSh<CR>
let g:carbon_now_sh_options =
\ { 'ln': 'true',
  \ 'th': 'Synthwave',
  \ 'fm': 'Source Code Pro' }
let g:carbon_now_sh_browser = 'firefox'

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" nerd tree toggle mapping
map <C-n> :NERDTreeToggle<CR>

" clock formate and update time
let g:airline#extensions#clock#format = '%H:%M:%S'
let g:airline#extensions#clock#updatetime = 1000

" switch between windows outside vim
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" BEST PART YCM
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>

" GOYO Toggle map
map <C-g> :Goyo<CR>

set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

" timeout
set timeout
set ttimeout
set timeoutlen=2000
set ttimeoutlen=100
