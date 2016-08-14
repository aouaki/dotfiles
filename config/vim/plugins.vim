" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
 endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles:
" Git gutter
NeoBundle 'airblade/vim-gitgutter'
" Auto Completion
NeoBundle 'Shougo/deoplete.nvim'
" Tern (JS) completion for deoplete
NeoBundle 'carlitux/deoplete-ternjs', {'build': {'mac': 'npm install -g tern', 'unix': 'npm install -g tern'}}
" Jedi (Python) completion for deoplete
NeoBundle 'zchee/deoplete-jedi'
" Include completion
NeoBundle 'Shougo/neoinclude.vim'
" Colorscheme
NeoBundle 'morhetz/gruvbox'
" File tree
NeoBundle 'scrooloose/nerdtree'
" Async make
NeoBundle 'benekastah/neomake', {'build': {'mac': 'npm install -g eslint eslint-plugin-import esling-plugin-import-order eslint-plugin-react flow-bin flow-vim-quickfix', 'unix': 'npm install -g eslint eslint-plugin-import esling-plugin-import-order eslint-plugin-react flow-bin flow-vim-quickfix'}}
" Multiple Cursors
NeoBundle 'terryma/vim-multiple-cursors'
" CtrlP
NeoBundle 'ctrlpvim/ctrlp.vim'
" Window management
NeoBundle 'spolu/dwm.vim'
" Javascript syntax support
NeoBundle 'pangloss/vim-javascript'
" JSX syntax support
NeoBundle 'mxw/vim-jsx'
" CSS color highlighting
NeoBundle 'ap/vim-css-color'
" Additional text objects
NeoBundle 'wellle/targets.vim'
" Change cwd to project root
NeoBundle 'airblade/vim-rooter'
" Cursor motoin
NeoBundle 'justinmk/vim-sneak'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
