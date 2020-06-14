""""""""""""""""""""""
"      Mappings      "
""""""""""""""""""""""      
" Set leader shortcut to a comma ','. By default it's the backslash
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
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Switch Buffers
nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>
nnoremap <leader>. :ls<cr>
" List all possible buffers with "gb" and accept a new buffer argument [1]
" nnoremap <leader>g :ls<CR>:b

" Move lines up and down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" open tagbar
nmap <F8> :TagbarToggle<CR>

" HIGHLIGHTING
" <Ctrl-c> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-c> :nohl<CR><C-l>
