let mapleader =","
map <F8> :setlocal spell! spelllang=en_gb<CR>
set title
set ruler
set showmatch
set ignorecase
set incsearch
set hlsearch
set bs=2
set nobackup
set number
set nocompatible
let html_use_css = 1

set encoding=utf-8

set diffopt+=iwhite " Ignore whitespace whilst diffing
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

set list listchars=nbsp:¬,tab:»·,trail:·,extends:>
set shiftwidth=4
set softtabstop=4
set tabstop=4

set noswapfile

set undofile
set undodir=/tmp

syntax on
filetype plugin indent on
set nofoldenable

" Using tabless https://www.npmjs.com/package/standard
autocmd Filetype javascript setlocal sw=2 sts=2 expandtab

call plug#begin('~/.vim/plugged')
" Git
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'

" Bash stuffs
" Plug 'vim-scripts/bash-support.vim'
Plug 'WolfgangMehner/bash-support'

" Golang stuffs
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'zchee/nvim-go', { 'do': 'make'}
Plug 'SirVer/ultisnips'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'shougo/neopairs.vim'

" i3
Plug 'PotatoesMaster/i3-vim-syntax'

" vim-go crutch to help generate tests for Golang
Plug 'buoto/gotests-vim'

" So commenting in & out code blocks works
Plug 'tpope/vim-commentary'

Plug 'tpope/vim-surround'


" So Neovim can remember where it left off
Plug 'farmergreg/vim-lastplace'

" So I can move between buffers easier... maybe I should use tabs or ctrl-^ instead?
Plug 'ctrlpvim/ctrlp.vim'

" Plug 'inkarkat/vim-spellcheck'
Plug 'scrooloose/syntastic'

" nvim-projectile
" Plug 'dunstontc/projectile.nvim'

" for nvim-projectile
"Plug 'Shougo/denite.nvim'

"Plug 'powerline/powerline'
Plug 'vim-airline/vim-airline'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'jiangmiao/auto-pairs'
call plug#end()


" Compile document, be it groff/LaTeX/markdown/etc.
map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
map <leader>p :!opout <c-r>%<CR><CR>

nnoremap <A-m> :MerginalToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" call neomake#configure#automake('nrwi', 500)
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_sh_shellcheck_args="-x"

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1

autocmd Filetype vue setlocal sw=2 sts=2 expandtab
autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd BufEnter * silent! lcd %:p:h

set wildmode=longest,list,full
set wildmenu

" https://en.parceljs.org/hmr.html#safe-write
set backupcopy=yes

set clipboard+=unnamedplus

" https://github.com/ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'

let g:airline_powerline_fonts = 1

let g:deoplete#enable_at_startup = 1

" Go config
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

let g:go_auto_sameids = 1

let g:go_fmt_command = "goimports"

let g:go_auto_type_info = 1

call deoplete#custom#source('_', 'converters', ['converter_auto_paren'])

" Shortcuts
" LATEX
" Word count:
	autocmd FileType tex map <leader>w :w !detex \| wc -w<CR>
	" Code snippets
	autocmd FileType tex inoremap ,fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
	autocmd FileType tex inoremap ,fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
	autocmd FileType tex inoremap ,exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
	autocmd FileType tex inoremap ,em \emph{}<++><Esc>T{i
	autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>T{i
	autocmd FileType tex vnoremap , <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
	autocmd FileType tex inoremap ,it \textit{}<++><Esc>T{i
	autocmd FileType tex inoremap ,ct \textcite{}<++><Esc>T{i
	autocmd FileType tex inoremap ,cp \parencite{}<++><Esc>T{i
	autocmd FileType tex inoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
	autocmd FileType tex inoremap ,x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
	autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,li <Enter>\item<Space>
	autocmd FileType tex inoremap ,ref \ref{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
	autocmd FileType tex inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
	autocmd FileType tex inoremap ,can \cand{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,con \const{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,v \vio{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,a \href{}{<++>}<Space><++><Esc>2T{i
	autocmd FileType tex inoremap ,sc \textsc{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,chap \chapter{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,st <Esc>F{i*<Esc>f}i
	autocmd FileType tex inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
	autocmd FileType tex inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
	autocmd FileType tex nnoremap ,up /usepackage<Enter>o\usepackage{}<Esc>i
	autocmd FileType tex inoremap ,tt \texttt{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,bt {\blindtext}
	autocmd FileType tex inoremap ,nu $\varnothing$
	autocmd FileType tex inoremap ,col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
	autocmd FileType tex inoremap ,rn (\ref{})<++><Esc>F}i
