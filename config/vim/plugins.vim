" Vundle integration
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'           " Git gutter
Plugin 'Shougo/deoplete.nvim'             " Auto Completion
Plugin 'carlitux/deoplete-ternjs'         " Tern (JS) completion for deoplete
Plugin 'zchee/deoplete-jedi'              " Jedi (Python) completion for deoplete
Plugin 'Shougo/neoinclude.vim'            " Include completion
Plugin 'morhetz/gruvbox'                  " Colorscheme
Plugin 'tpope/vim-fugitive'               " Git integration
Plugin 'scrooloose/nerdtree'              " File tree
Plugin 'benekastah/neomake'               " Async make
Plugin 'terryma/vim-multiple-cursors'     " Multiple Cursors
Plugin 'ctrlpvim/ctrlp.vim'               " CtrlP
Plugin 'spolu/dwm.vim'                    " Window management
Plugin 'pangloss/vim-javascript'          " Javascript syntax support
Plugin 'mxw/vim-jsx'                      " JSX syntax support
Plugin 'ap/vim-css-color'                 " CSS color highlighting
Plugin 'wellle/targets.vim'               " Additional text objects
Plugin 'airblade/vim-rooter'              " Change cwd to project root
Plugin 'justinmk/vim-sneak'               " Cursor motoin
Plugin 'flowtype/vim-flow'                " Solution while neomake + flow isn't working
call vundle#end()            " required
filetype plugin indent on    " required
