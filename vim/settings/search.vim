"git grep the current word using K (mnemonic Kurrent)
nnoremap <silent> K :Ag <cword><CR>

",gg = Grep! - using Ag the silver searcher
" open up a grep line, with a quote started for the search
nnoremap ,gg :Ag ""<left>
