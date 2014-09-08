"Pathogen {{{
execute pathogen#infect()
filetype plugin indent on
Helptags
"}}}

"Some vim settings {{{
syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set incsearch
set number
set wrap
set noswapfile


colorscheme slate
"}}}

"Disabled up/down/left/right keys {{{
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
"}}}

" Super Tab {{{
let g:SuperTabDefaultCompletionType = 'context'
let g:EclimCompletionMethod = 'omnifunc'
" }}}
"UltiSnip {{{
let g:UltiSnipsSnippetDirectories=["UltiSnips", "vim-snippets/UltiSnips"]
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-e>"
let g:UltiSnipsJumpBackwardTrigger="<c-w>"
let g:UltiSnipsEditSplit = "vertical"
"}}}

"IndentLine {{{
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'
"there is a space behind
set list lcs=tab:\|\ 
"}}}

"Some setting to make it work with Eclim {{{
set nocompatible
"}}}

"Delimitmate plugin {{{
let delimitMate_expand_cr = 0
"}}}

"NERDTree mapping {{{
nmap <leader>n :NERDTreeToggle<CR>
map  <leader>r :NERDTreeFind<cr>
let g:NERDTreeChDirMode = 2
"}}}

"Ctr-P Setting{{{
let g:ctrlp_use_caching=0 
"}}}

"My Mapping {{{
"move line
nnoremap - ddp
nnoremap _ ddkkp
"open vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
"open zsh
nnoremap <leader>ez :vsplit "~/.zshrc"<cr>
nnoremap <leader>sz :source "~/.zshrc"<cr>

"make word upper 
inoremap <c-u> <esc>viwUea
nnoremap <c-u> viwUe

"make work inside quote
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' ea'<esc>bi'<esc>el
vnoremap <leader>" <esc>a"<esc>`<i"<esc>`>l

"move around buffer
noremap <C-j> <C-w>j
noremap <C-h> <C-w>h
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <leader>q :q!<cr>
nnoremap <leader>dq :1,100 bd!<cr>:q!<cr>

nnoremap H 0
nnoremap L $
inoremap jk <esc>:w!<cr>

inoremap <esc> <nop>
nnoremap <space> /
"}}}

nnoremap cc :Dispatch brazil-build && brazil-build apollo-pkg<cr>
nnoremap cd :Dispatch brazil-build && brazil-build apollo-pkg <cr>

" Mapping for compiler {{{
noremap <f3> :<c-u>w<cr>:Java<cr>
" }}}

"Vimscript file setting {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

"Setting file syntax {{{
" gradle syntax highlighting
au BufNewFile,BufRead *.gradle set filetype=groovy
"}}}

autocmd BufEnter * lcd %:p:h

function! GotoFileWithLineNumber()
    let file_name = expand('<cfile>')
    echo file_name
    echo "-----"
    echo expand('<cword>')
endfunction

"map gf :call GotoFileWithLineNumber()<CR>


