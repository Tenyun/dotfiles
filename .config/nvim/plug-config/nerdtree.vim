" Start NERDtree when dir is selected (e.g. "vim .") and start NERDTreeTabs
let g:nerdtree_tabs_open_on_console_startup=2

" Add a close button in the upper right for tabs
let g:tablineclosebutton=1

" Automatically find and select currently opened file in NERDTree
let g:nerdtree_tabs_autofind=1

" Add folder icon to directories
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" Hide expand/collapse arrows
let g:NERDTreeDirArrowExpandable = "\u00a0"
let g:NERDTreeDirArrowCollapsible = "\u00a0"
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
highlight! link NERDTreeFlags NERDTreeDir
let g:NERDTreeCascadeSingleChildDir = 0

" Show hidden files by default
let NERDTreeShowHidden=1

" Show bookmarks by default
let NERDTreeShowBookmarks=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

