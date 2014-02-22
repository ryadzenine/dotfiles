" Make Vim omnicompletion work just like a regular IDE
" Source: http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE

" The above command will change the 'completeopt' option so that Vim's popup menu 
" doesn't select the first completion item, but rather just inserts the longest 
" common text of all matches; and the menu will come up even if there's only one match. "
" (The longest setting is responsible for the former effect and the menuone is responsible for the latter.) 
completeopt=longest,menuone  

" The above mapping will change the behavior of the <Enter> key when the popup menu is visible. 
" In that case the Enter key will simply select the highlighted menu item, just as <C-Y> does. 
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" the above mappings, the first will make <C-N> work the way it normally does; however, when the menu appears, 
" the <Down> key will be simulated. What this accomplishes is it keeps a menu item always highlighted.
" This way you can keep typing characters to narrow the matches, and the nearest match will be selected so that 
" you can hit Enter at any time to insert it. In the above mappings, 
" the second one is a little more exotic: it simulates <C-X><C-O> to bring up the omni completion menu, 
" then it simulates <C-N><C-P> to remove the longest common text, and finally it simulates <Down> again to keep a match highlighted. 
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

