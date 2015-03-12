nnoremap <C-p> :Unite -start-insert file_rec/async<cr>
let g:unite_source_history_yank_enable = 1
nnoremap <space>y :Unite history/yank<cr>
nnoremap <space>/ :Unite ag:.<cr>
nnoremap <space>s :Unite -quick-match buffer<cr>
let g:unite_source_rec_async_command= 'ag -p ~/.agignore --nocolor --nogroup -g ""'
inoremap <silent><buffer><expr> <C-s>     unite#do_action('split')
inoremap <silent><buffer><expr> <C-v>     unite#do_action('vsplit')
