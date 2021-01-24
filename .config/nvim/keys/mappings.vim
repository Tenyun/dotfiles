""""""""""""""""""""""
"      Mappings      "
""""""""""""""""""""""      
" Set leader shortcut to a whitespace ' '. By default it's the backslash
let mapleader = " "

" Jump to next error with Ctrl-n and previous error with Ctrl-m. Close the
" quickfix window with <leader>y
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>y :cclose<CR>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" Enter automatically into the files directory
autocmd BufEnter * silent! lcd %:p:h

" Open file at same line last closed
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif
endif

" Automatically reloads neovim configuration file on write (w)
autocmd! bufwritepost init.vim source %

" Movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Move lines up and down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" open tagbar
nmap <F8> :TagbarToggle<CR>

" HIGHLIGHTING
" <Ctrl-c> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-c> :nohl<CR><C-l>

" bbye close buffer
:nnoremap <Leader>q :Bdelete<CR>
