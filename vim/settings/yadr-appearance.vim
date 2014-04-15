" Make it beautiful - colors and fonts

" ------------------------------------------------------------------
" Solarized Colorscheme Config
" ------------------------------------------------------------------
let g:solarized_contrast="high"    "default value is normal
let g:solarized_visibility="low"    "default value is normal
let g:solarized_diffmode="high"    "default value is normal
syntax enable
set background=dark
colorscheme solarized
" ------------------------------------------------------------------
if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set lines=60
  set columns=190

  if has("gui_gtk2")
    set guifont=Source\ Code\ Pro\ medium\ 12,Inconsolata\ XL\ 12,Inconsolata\ 15,Monaco\ 12
  else
    set guifont=Source\ Code\ Pro\ medium\ 12Inconsolata\ XL:h17,Inconsolata:h20,Monaco:h17
  end
else
  "dont load csapprox if we no gui support - silences an annoying warning
  let g:CSApprox_loaded = 1
endif

