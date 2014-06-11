"Pathogen
execute pathogen#infect()
filetype plugin indent on
Helptags

syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch

"Disabled up/down/left/right keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"UltiSnip
let g:UltiSnipsSnippetDirectories=["UltiSnips", "vim-snippets/UltiSnips"]
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit = "vertical"

"IndentLine
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'
"there is a space behind
set list lcs=tab:\|\ 

"Some setting to make it work with Eclim
set nocompatible

"Delimitmate plugin
let delimitMate_expand_cr = 1

"NERDTree mapping
nmap <leader>n :NERDTreeToggle<CR>

"Ctr-P Setting
let g:ctrlp_use_caching=0 

