set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.config/nvim/bundle')
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'scrooloose/nerdtree'
Plug 'vimwiki/vimwiki'
Plug 'Shougo/deoplete.nvim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'slashmili/alchemist.vim'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go'
Plug 'alvan/vim-closetag'
Plug 'sjl/badwolf'
call plug#end()

filetype plugin indent on    " required
syntax on
set wrap
set linebreak
set breakindent
set showbreak=..
set hidden
set directory=$HOME/.vim/swapfiles//
set swapfile
set undodir=$HOME/.vim/undo-dir
set undofile
let g:python3_host_prog = '/usr/local/bin/python3'

" Set tabbing to 2 (for personal projects)
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab smarttab

map <C-n> :NERDTreeToggle<CR>

" Setup inccommand for nvim
set inccommand=nosplit

" setup airline
set showtabline=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'
set laststatus=2

" Setup deoplete for neovim
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:min_pattern_length = 2

let g:buffergator_show_full_directory_path = 0

nmap <C-a> <Home>
nmap <C-e> <End>
imap <C-a> <Home>
imap <C-e> <End>
nmap <Leader>k <Plug>VimwikiDiaryPrevDay
nmap <Leader>j <Plug>VimwikiDiaryNextDay
" Press Shift-Space (may not work on your system).
imap <C-Space> <Esc>
" Try the following so Shift-Space also enters insert mode.
nmap <C-Space> i
nmap <C-s> :bp<CR>
nmap <C-d> :bd<CR>
nmap <C-f> :bn<CR>

set t_ut=
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:badwolf_darkgutter = 1
colorscheme goodwolf
set background=dark
set guicursor=
set number
set relativenumber
augroup number_line_controls
  autocmd FocusLost * :set norelativenumber
  autocmd FocusGained * :set relativenumber
  autocmd InsertEnter * :set norelativenumber
  autocmd InsertLeave * :set relativenumber
augroup end
set cursorline
highlight CursorLine cterm=none ctermbg=234
" highlight Pmenu ctermfg=0 ctermbg=230
" highlight LineNr cPlugin 'sjl/badwolf'termfg=66 ctermbg=236
set mouse=a

" highlight whitespace
highlight ExtraWhitespace ctermbg=darkgray
match ExtraWhitespace /\s\+$/
" Remove whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Ale settings
nmap <silent> <Leader>e <Plug>(ale_detail)

" Gitgutter settings
let g:gitgutter_signs = 0

" Close tag settings
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js"

" folding settings
set foldmethod=syntax
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
