let &t_Co=256

execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showmatch
set hlsearch
set guifont=Arial_monospaced_for_SAP:h16

"some plug-in
map <silent> <F2> :NERDTreeToggle<CR>
imap <F2> <ESC>:NERDTreeToggle<CR>
nmap <silent> <F3> :TagbarToggle<CR>
	let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
	let g:tagbar_width = 30

" Solarized stuff
let g:solarized_termtrans = 1
colorscheme distinguished

set nu
highlight LineNr ctermfg=None

" Set tab to 4 spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Highlight tail whitespae
highlight ExtraWhitespace ctermbg=lightgray ctermfg=black guibg=lightgray
match Todo /\s\+$/

" Hight over the 120 column limit
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
2match OverLength /\%121v.\+/


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add maktaba and codefmt to the runtimepath.
" " (The latter must be installed before it can be used.)
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" " Also add Glaive, which is used to configure codefmt's maktaba flags. See
" " `:help :Glaive` for usage.
Plugin 'google/vim-glaive'
call glaive#Install()
" " Optional: Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

