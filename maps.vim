" Select all
nmap <C-a> gg<S-v>G
" Open current directory
nmap te :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>
" Windows

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
nmap ww :w<Return>
nmap wq :wq<Return>
nmap qq :q!<Return>
" Move window
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-

" Ess escape settingc
inoremap jk <Esc> 
inoremap jj <Esc> 
inoremap kj <Esc>
inoremap zl <Esc>o

inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <Esc>A
inoremap CC <Esc>C
inoremap UU <Esc>U
inoremap SS <Esc>S
inoremap DD <Esc>dd

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

nnoremap <A-j> :m +1<CR>
nnoremap <A-k> :m -2<CR>

nnoremap <Leader>G :G<cr>
nnoremap <Leader>gp :Gpush<cr>
nnoremap <Leader>gl :Gpull<cr>

" Terminal RW
map <S-t> :vsp term://zsh<CR>
nnoremap // :noh <Return>
