set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.config/nvim/bundle')
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim'
Plug 'slashmili/alchemist.vim'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'vimwiki/vimwiki'
Plug 'w0rp/ale'
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
autocmd Filetype elm setlocal ts=4 sts=4 sw=4 expandtab smarttab

map <C-n> :NERDTreeToggle<CR>

" Setup inccommand for nvim
set inccommand=nosplit

" setup airline
set showtabline=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
set laststatus=2

" Setup deoplete for neovim
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:min_pattern_length = 2
" elm deoplete
let g:deoplete#omni#functions = {}
let g:deoplete#omni#sources = {}
let g:deoplete#omni#sources._ = ['file', 'neosnippet']
let g:deoplete#omni#input_patterns = {}

let g:deoplete#omni#functions.elm = ['elm#Complete']
let g:deoplete#omni#input_patterns.elm = '\.'
let g:deoplete#omni#sources.elm = ['omni'] + g:deoplete#omni#sources._

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
nmap <Leader>s :bp<CR>
nmap <Leader>d :bd<CR>
nmap <Leader>f :bn<CR>

set t_ut=
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:PaperColor_Dark_Override = { 'background' : '#1c1c1c', 'cursorline' : '#abcdef', 'matchparen' : '#3a3a3a', 'comment' : '#5f875f' }
colorscheme PaperColor
set background=dark
set number
set relativenumber
augroup number_line_controls
  autocmd FocusLost * :set norelativenumber
  autocmd FocusGained * :set relativenumber
  autocmd InsertEnter * :set norelativenumber
  autocmd InsertLeave * :set relativenumber
augroup end
set cursorline
highlight CursorLine cterm=none ctermbg=235
" highlight Pmenu ctermfg=0 ctermbg=230
" highlight LineNr cPlugin 'sjl/badwolf'termfg=66 ctermbg=236
set mouse=a

" highlight whitespace
highlight ExtraWhitespace ctermbg=darkgray
match ExtraWhitespace /\s\+$/
" Remove whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" elixir setup
augroup elixir_setup
  autocmd FileType elixir nmap <Leader>t :Mix test<CR>
augroup end

" elm setup
let g:elm_setup_keybindings = 0
augroup elm_vim_setup
  autocmd FileType elm nmap <Leader>m :ElmMake<CR>
  autocmd FileType elm nmap <Leader>r :ElmRepl<CR>
  autocmd FileType elm nmap <Leader>e :ElmErrorDetail<CR>
  autocmd FileType elm nmap <Leader>t :ElmTest<CR>
  autocmd FileType elm nmap <Leader>q :ElmShowDocs<CR>
  autocmd FileType elm nmap <Leader>w :ElmBrowseDocs<CR>
augroup end
let g:elm_detailed_complete = 1
" elm auto-format
let g:elm_format_autosave = 1

" folding settings
set foldmethod=syntax
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
