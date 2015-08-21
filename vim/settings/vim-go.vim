"Run commands, such as go run with <leader>r for the current file or go build and go test for the current package with <leader>b and <leader>t.
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)

"Replace gd (Goto Declaration) for the word under your cursor (replaces current buffer):
au FileType go nmap gd <Plug>(go-def)
"Open a vertical, horizontal or a new tab and go to defintion/declaration of
"the identified under your cursor,
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
"
"Show type info for the word under your cursor 
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>gb <Plug>(go-doc-browser)
"Lint the file
au FileType go nmap <Leader>gl :GoLint<CR>
au FileType go nmap <Leader>gv :GoVet<CR>
"Go Oracle maps 
au FileType go nmap <Leader>s :GoImplements<CR>

au FileType go nmap <Leader>gr :GoRename<CR>
au FileType go nmap <Leader>er :GoErrCheck<CR>

let g:go_snippet_engine = "neosnippet"
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
