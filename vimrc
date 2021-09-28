syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu rnu
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'preservim/nerdcommenter'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'will133/vim-dirdiff'
"Plug 'sheerun/vim-polyglot'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'

"  I AM SO SORRY FOR DOING COLOR SCHEMES IN MY VIMRC, BUT I HAVE
"  TOOOOOOOOOOOOO
"Plug 'gruvbox-community/gruvbox'
"Plug 'sainnhe/gruvbox-material'
"Plug 'phanviet/vim-monokai-pro'
"Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
"Plug '/home/mpaulson/personal/vim-be-good'

call plug#end()

"###############################################################################
" YouCompleteMe Settings
"###############################################################################
let g:ycm_python_binary_path = 'python3'
let g:ycm_min_num_of_chars_for_completion = 1
set completeopt-=preview
set completeopt+=popup

"###############################################################################
" Syntastic settings
"###############################################################################
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

"###############################################################################
" Vim-latex-live-preview settings
" ##############################################################################
let g:livepreview_engine = 'latexmk' 


colorscheme gruvbox
set background=dark
