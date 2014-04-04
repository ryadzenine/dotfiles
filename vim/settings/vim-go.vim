"Import the package under your cursor
au Filetype go nnoremap <buffer> <leader>i :exe 'GoImport ' . expand('<cword>')<CR>
"Run go run for the current file with
au Filetype go nnoremap <leader>r :GoRun %<CR>
"Open a vertical, horizontal or a new tab and go to defintion/declaration of
"the identified under your cursor:
au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef"<CR>
au Filetype go nnoremap <leader>t :tab split <CR>:exe "GoDef"<CR>

