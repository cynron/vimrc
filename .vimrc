let g:vim_markdown_folding_disabled=1
let g:vim_markdown_initial_foldlevel=1

set shortmess=atl
set nu
syntax on
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
set ruler
set showcmd
set foldenable
set foldmethod=manual
set nocompatible

set encoding=utf-8
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936
set fileencoding=utf-8

set autoread

" set system clipboard to unnamedplus buffer
set clipboard=unnamedplus
set tabstop=2
set softtabstop=2
set autoindent
set shiftwidth=2
set expandtab

set cindent
set softtabstop=2
set hlsearch
set incsearch
set ignorecase
set mouse=a
set showmatch
set smartindent
"set autochdir
"set list

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 
imap i18n internationalization
imap destory destroy
imap teh the
imap inculde include

let mapleader = ","

nmap <leader>t :NERDTreeToggle <CR>
nmap <leader>s :ConqueTermSplit zsh <CR>

nmap <leader>x :q! <CR>
nmap <leader>z :q <CR>

nmap <leader>h <C-h>
nmap <leader>j <C-j>
nmap <leader>k <C-k>
nmap <leader>l <C-l>


" taglist
nmap <leader>d :TlistToggle <CR>

" ctags  shortcut
nmap <leader>f <C-]>
nmap <leader>r <C-t>
nmap <leader>o <C-o>

nmap <leader>n :tn <CR>
nmap <leader>p :tp <CR>

" cscope shortcut
set cscopequickfix=c-,d-,e-,g-,i-,s-,t-

nmap <leader>cg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>ct :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>ce :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>ci :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <leader>cd :cs find d <C-R>=expand("<cword>")<CR><CR>

nmap <leader>cn :cn <CR>
nmap <leader>cp :cp <CR>

let Tlist_Use_Right_Window = 1

colors evening 
" autocmd VimEnter * NERDTree
filetype on

let NERDTreeShowBookmarks=1
let NERDTreeMouseMode=2 

execute pathogen#infect()
filetype plugin indent on
filetype plugin on
filetype on

autocmd FileType c set shiftwidth=4 | set expandtab
autocmd FileType cpp,python set shiftwidth=4 | set expandtab
autocmd FileType javascript set shiftwidth=2 | set expandtab

" for omniComplete
set nocp
"set tags=/home/xy/p/linux.uv/uv/tags,/home/xy/p/libzmq.c/tags,/usr/src/linux-source-3.2.0/linux-source-3.2.0/tags

set nocompatible
set tags=tags
:cs add ./cscope.out
if filereadable("cscope.out")
  cs add ./cscope.out
end

if filereadable("tags")
  set tags+=tags
end

if filereadable(".tags")
  set tags+=.tags
end

" filetype off
" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()
" set nocompatible                " be iMproved
" filetype off                    " required!
" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()

" let Vundle manage Vundle
" Bundle 'gmarik/vundle'

" my Bundle here:
" 
"
" original repos on github
" Bundle 'kien/ctrlp.vim'
" Bundle 'sukima/xmledit'
" Bundle 'sjl/gundo.vim'
" Bundle 'jiangmiao/auto-pairs'
" Bundle 'klen/python-mode'
" Bundle 'Valloric/ListToggle'
" Bundle 'SirVer/ultisnips'
" Bundle 'Valloric/YouCompleteMe'
" Bundle 'scrooloose/syntastic'
" Bundle 't9md/vim-quickhl'
" Bundle 'Lokaltog/vim-powerline'
" Bundle 'scrooloose/nerdcommenter'
"..................................
" vim-scripts repos

" Bundle 'YankRing.vim'
" Bundle 'vcscommand.vim'
" Bundle 'ShowPairs'
" Bundle 'SudoEdit.vim'
" Bundle 'EasyGrep'
" Bundle 'VOoM'
" Bundle 'VimIM'
"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
filetype plugin indent on

"
"p
"vnoremap _g y:exe "grep /" . escape(@", ’\\/’) . "/ *.c *.h"<CR>
"`
" autocmd FileType text setlocal textwidth=78

set tags+=./tags
cs add ./cscope.out
set path+=.


