" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd!
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

    " Better Comments
    Plug 'tpope/vim-commentary'
    " Repeat stuff
    Plug 'tpope/vim-repeat'
    " Text Navigation
    Plug 'unblevable/quick-scope'
    " Easymotion
    Plug 'easymotion/vim-easymotion'
    " Surround
    Plug 'tpope/vim-surround'
    " Have the file system follow you around
    Plug 'airblade/vim-rooter'
    " auto set indent settings
    Plug 'tpope/vim-sleuth'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Treesitter
    "Plug 'nvim-treesitter/nvim-treesitter'
    "Plug 'nvim-treesitter/playground'
    " Cool Icons
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
    Plug 'junegunn/fzf.vim'
    " File Browser
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'mkitt/tabline.vim'
    " Golang
    Plug 'fatih/vim-go'
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    " Snippets
    " Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    " tagbar
    Plug 'majutsushi/tagbar'
    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Better tabline
    " Plug 'romgrk/barbar.nvim'
    " Bash
    Plug 'WolfgangMehner/bash-support'
    " Spellcheck
    Plug 'scrooloose/syntastic'
    " Airline
    Plug 'vim-airline/vim-airline'
    " Status Line
    " Plug 'glepnir/galaxyline.nvim'
    " Plug 'kevinhwang91/rnvimr'
    " Cheat Cheet
    Plug 'lifepillar/vim-cheat40'
    " Markdown
    Plug 'plasticboy/vim-markdown'
    " Colortheme
    Plug 'sainnhe/sonokai'
    " Plug 'fatih/molokai'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Vim-Wiki
    Plug 'vimwiki/vimwiki'
    " Intuitive buffer closing
    Plug 'moll/vim-bbye'
    " Ansible
    Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
