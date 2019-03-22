filetype off                  " required

call plug#begin('~/.config/nvim/bundle')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'vimwiki/vimwiki'
Plug 'Shougo/deoplete.nvim'
Plug 'w0rp/ale'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'junegunn/fzf.vim'
Plug 'alvan/vim-closetag'
Plug 'sjl/badwolf'
Plug 'whatyouhide/vim-gotham'
Plug 'slashmili/alchemist.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
" Clojure setup
Plug 'clojure-vim/async-clj-omni'
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
" Haskell setup
Plug 'eagletmt/neco-ghc'

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

" Go lang setup
" Turn off polyglot to prevent issues with go package
let g:polyglot_disabled = ['go']

" Setup deoplete for neovim
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:min_pattern_length = 2
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

let g:buffergator_show_full_directory_path = 0

nmap <C-a> <Home>
nmap <C-e> <End>
imap <C-a> <Home>
imap <C-e> <End>
nmap <Leader>k <Plug>VimwikiDiaryPrevDay
nmap <Leader>j <Plug>VimwikiDiaryNextDay
nmap <C-s> :bp<CR>
nmap <C-d> :bd<CR>
nmap <C-f> :bn<CR>

set t_ut=
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:badwolf_darkgutter = 1
colorscheme gotham256
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
highlight CursorLine cterm=none ctermbg=234
" highlight Pmenu ctermfg=0 ctermbg=230
" highlight LineNr cPlugin 'sjl/badwolf'termfg=66 ctermbg=236
set list listchars=tab:\|_,trail:-
let g:indentLine_showFirstIndentLevel=1
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar='_'
set mouse=a

" Remove whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Ale settings
nmap <silent> <Leader>e <Plug>(ale_detail)
let g:ale_lint_on_text_changed = 'never'
let g:ale_fix_on_save = 1
let g:ale_linters = { 'cljs': ['joker'], 'elixir': []}

" Gitgutter settings
let g:gitgutter_signs = 0

" Close tag settings
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js"

" folding settings
set foldmethod=syntax
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

