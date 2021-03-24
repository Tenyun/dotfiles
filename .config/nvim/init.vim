"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/

" General Settings
if !exists('g:vscode')
  source ~/.config/nvim/plug-config/polyglot.vim
endif
source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/general/settings.vim
source ~/.config/nvim/general/functions.vim
source ~/.config/nvim/general/theme.vim
source ~/.config/nvim/keys/mappings.vim

if exists('g:vscode')
  " VS Code extension
  source ~/.config/nvim/vscode/settings.vim
  source ~/.config/nvim/plug-config/easymotion.vim
  source ~/.config/nvim/plug-config/highlightyank.vim
else

  " Plugin Configuration
  source ~/.config/nvim/keys/which-key.vim
  source ~/.config/nvim/plug-config/vim-commentary.vim
  source ~/.config/nvim/plug-config/rnvimr.vim
  source ~/.config/nvim/plug-config/codi.vim
  source ~/.config/nvim/plug-config/easymotion.vim
  source ~/.config/nvim/plug-config/goyo.vim
  source ~/.config/nvim/plug-config/vim-rooter.vim
  source ~/.config/nvim/plug-config/start-screen.vim
  source ~/.config/nvim/plug-config/gitgutter.vim
  source ~/.config/nvim/plug-config/git-messenger.vim
  source ~/.config/nvim/plug-config/closetags.vim
  source ~/.config/nvim/plug-config/floaterm.vim
  source ~/.config/nvim/plug-config/barbar.vim
  source ~/.config/nvim/plug-config/far.vim
  source ~/.config/nvim/plug-config/tagalong.vim
  source ~/.config/nvim/plug-config/bracey.vim
  source ~/.config/nvim/plug-config/markdown-preview.vim
  source ~/.config/nvim/plug-config/neovide.vim
  source ~/.config/nvim/plug-config/vimspector.vim
  source ~/.config/nvim/plug-config/vim-go.vim
  source ~/.config/nvim/plug-config/ansible-vim.vim
  source ~/.config/nvim/plug-config/fzf.vim
  source ~/.config/nvim/plug-config/vim-wiki.vim
  source ~/.config/nvim/plug-config/coc/coc.vim
  source ~/.config/nvim/plug-config/coc/coc-extensions.vim
  luafile ~/.config/nvim/lua/plugins/treesitter-config.lua
  luafile ~/.config/nvim/lua/plugins/colorizer-config.lua
  luafile ~/.config/nvim/lua/nvcodeline.lua
  " source ~/.config/nvim/plug-config/sneak.vim
  " source ~/.config/nvim/plug-config/rainbow.vim
  " source ~/.config/nvim/plug-config/illuminate.vim
  " source ~/.config/nvim/plug-config/vista.vim
  " source ~/.config/nvim/plug-config/xtabline.vim
  " source ~/.config/nvim/plug-config/ale.vim
endif
source $HOME/.config/nvim/plug-config/quickscope.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
