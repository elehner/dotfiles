" elm deoplete
let g:deoplete#omni#functions = {}
let g:deoplete#omni#sources = {}
let g:deoplete#omni#sources._ = ['file', 'neosnippet']
let g:deoplete#omni#input_patterns = {}

let g:deoplete#omni#functions.elm = ['elm#Complete']
let g:deoplete#omni#input_patterns.elm = '\.'
let g:deoplete#omni#sources.elm = ['omni'] + g:deoplete#omni#sources._

" elm setup
elm setlocal ts=4 sts=4 sw=4 expandtab smarttab
let g:elm_setup_keybindings = 0
nmap <Leader>m :ElmMake<CR>
nmap <Leader>r :ElmRepl<CR>
nmap <Leader>t :ElmTest<CR>
nmap <Leader>q :ElmShowDocs<CR>
nmap <Leader>w :ElmBrowseDocs<CR>
let g:elm_detailed_complete = 1
" elm auto-format
let g:elm_format_autosave = 1

