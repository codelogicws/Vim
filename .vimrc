nnoremap <C-l> o<Enter><Esc>O
inoremap kj <Esc>
cnoremap kj <Esc>
vnoremap kj <Esc>
nnoremap <leader>ne :NERDTree<cr>
nnoremap <leader>ev :tabnew $MYVIMRC<cr>
nnoremap <leader>cl gg<S-v><S-g>dd<Esc>i

set number
:set tabstop=4
:set shiftwidth=4
:set expandtab

"--------------syntastic ----------------"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_haskell_ghc_mod_exec = 'ghc-mod.sh'
set tabstop=4
"--------------syntastic-----------------"




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
 NeoBundle 'https://github.com/scrooloose/syntastic.git'

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
