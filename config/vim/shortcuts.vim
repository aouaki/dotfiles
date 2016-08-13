" 0 goes to first non-blank character
nnoremap 0 ^

" un-highlight search results
noremap <leader><space> :noh<cr>

" Normal/Visual tab for bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" Status list
nmap <C-l><C-o> :lopen<cr>
nmap <C-l><C-c> :lclose<cr>
nmap <C-l><C-l> :try<bar>lnext<bar>catch /^Vim\%((\a\+)\)\=:E\%(553\<bar>42\):/<bar>ll<bar>endtry<cr>

" NerdTree
map <leader>nn :NERDTree<cr>

" Cursor motion
map <leader>j 10j
map <leader>k 10k
