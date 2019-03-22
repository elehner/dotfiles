let b:ale_linters = ['rls', 'cargo']
let b:ale_fixers = ['rustfmt']

nmap gx <Plug>(rust-def-vertical)
nmap <leader>gd <Plug>(rust-doc)
nmap <leader>r :!cargo run<CR>
