nnoremap <C-l> o<Enter><Esc>O
inoremap kj <Esc>
cnoremap kj <Esc>
vnoremap kj <Esc>
nnoremap <leader>ne :NERDTree<cr>

set number





"---------------Neo Bundle------------"
" Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
 NeoBundle 'https://github.com/Lokaltog/vim-easymotion.git'
 NeoBundle 'https://github.com/kien/ctrlp.vim.git'
 NeoBundle 'https://github.com/scrooloose/nerdtree.git'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
"---------------Neo Bundle---------------"
