"Open the relevant Godoc for the word under the cursor with <leader>gd or open it vertically with <leader>gv
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
"
"Run commands, such as go run with <leader>r for the current file or go build and go test for the current package with <leader>b and <leader>t.
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)

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
