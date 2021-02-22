if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd!
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
" File Search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" File Browser
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'mkitt/tabline.vim'
Plug 'ryanoasis/vim-devicons'
" Golang
Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" Snippets
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" tagbar
Plug 'majutsushi/tagbar'
" Git
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'
" Bash
Plug 'WolfgangMehner/bash-support'
" Commenting in & out code blocks:
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
" Spellcheck
Plug 'scrooloose/syntastic'
" Airline
Plug 'vim-airline/vim-airline'
" Autopairs
Plug 'jiangmiao/auto-pairs'
" Deoplete
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Cheat Cheet
Plug 'lifepillar/vim-cheat40'
" Markdown
Plug 'plasticboy/vim-markdown'
" Goldenview
"Plug 'zhaocai/goldenview.vim'
" Colortheme
Plug 'sainnhe/sonokai'
" Plug 'fatih/molokai'
" See what keys do like in emacs
Plug 'liuchengxu/vim-which-key'
" Terminal
Plug 'voldikss/vim-floaterm'
" Vim-Wiki
Plug 'vimwiki/vimwiki'
" bbye
Plug 'moll/vim-bbye'
" Ansible
Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }
call plug#end()
