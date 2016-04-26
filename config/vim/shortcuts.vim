" un-highlight search results
noremap <leader><space> :noh<cr>

" Normal/Visual tab for bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" NerdTree
map <leader>nn :NERDTree<cr>

" Status line --------------------------------------------------------- {{{
augroup ft_statuslinecolor
        au!
        au InsertEnter * hi StatusLine ctermfg=196 guifg=#FF3145
        au InsertLeave * hi StatusLine ctermfg=130 guifg=#CD5907
augroup END
set statusline=%f " Path.
set statusline+=%m " Modified flag.
set statusline+=%r " Readonly flag.
set statusline+=%w " Preview window flag.
set statusline+=\ " Space.
set statusline+=%= " Right align.
" Line and column position and counts.
set statusline+=\ (line\ %l\/%L,\ col\ %03c)

