syntax on
autocmd vimenter * colorscheme gruvbox
set background=dark
set nocompatible
set number

filetype plugin on
filetype indent on

set autowrite
set shiftwidth=4
set tabstop=4
set textwidth=80
set wrap

let $RC="$HOME/.vimrc"
let $RTP=split(&runtimepath, ',')[0]
nmap <leader>n :NERDTreeToggle<cr>
