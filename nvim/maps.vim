" Description: Keymaps

nnoremap <S-C-p> "0p
" Delete without yank
"nnoremap <leader>d "_d
"nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
nnoremap c "_c
nnoremap C "_C

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Delete a word backwards
"nnoremap dw vb"_d

" Select all
nmap <C-a> gg<S-v>G

" Save with root permission
command! W w !sudo tee > /dev/null %

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"------------------------------
" Windows

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Close window
nmap sx <C-w>c
" Move window
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-

"------------------------------
" Text editing

" Multiple cursors
let g:VM_maps = {}
let g:VM_maps['Find Under']         = 'mc'
let g:VM_maps["Select Cursor Down"] = 'mj'
let g:VM_maps["Select Cursor Up"]   = 'mk'

" Is it junk? TODO: Remove if not needed
"------------------------------
" System clipboard
"set clipboard=unnamed

"vmap <leader>y "+y
"vmap <leader>d "+d
"nmap <leader>y "+yy
"nmap <leader>p "+p
"nmap <leader>P "+P
"vmap <leader>p "+p
"vmap <leader>P "+P

" Is it junk? TODO: Remove if not needed
"nnoremap <C-j> :m +1<CR>
"nnoremap <C-k> :m -2<CR>
"inoremap <C-j> <Esc>:m +1<CR>gi
"inoremap <C-k> <Esc>:m -2<CR>gi
