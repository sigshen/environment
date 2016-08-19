let &t_Co=256

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

" All of your Plugins must be added before the following line
filetype plugin indent on    " required
set background=dark

set backspace=indent,eol,start

" taglist
map <silent> <F9> :TlistToggle<cr>

" nerdtree
map <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
