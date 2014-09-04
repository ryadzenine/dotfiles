"Open the relevant Godoc for the word under the cursor with <leader>gd or open it vertically with <leader>gv
au FileType go nmap <Leader>gd <Plug>(go-doc-vertical)

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
"Lint the file
au FileType go nmap <Leader>gl :GoLint<CR>
au FileType go nmap <Leader>gv :GoVet<CR>
"Go Oracle maps 
au FileType go nmap <Leader>goi :GoOracleImplements<CR>
au FileType go nmap <Leader>god :GoOracleDescribe<CR>

"au FileType go nmap <silent> <Leader>gi :read !impl expand("<cword>")<Space> 
let g:go_snippet_engine = "neosnippet"
