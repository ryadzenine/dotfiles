set wildignore+=*.pyc
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules/*,Godeps/*     " MacOSX/Linux

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
