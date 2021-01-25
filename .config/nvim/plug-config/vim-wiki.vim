" VimWiki
  let g:vimwiki_key_mappings =
    \ {
    \   'all_maps': 1,
    \   'global': 1,
    \   'headers': 1,
    \   'text_objs': 1,
    \   'table_format': 1,
    \   'table_mappings': 0,
    \   'lists': 1,
    \   'links': 1,
    \   'html': 1,
    \   'mouse': 1,
    \ }

" " Filetypes enabled for
" let g:vimwiki_filetypes = ['markdown']


let g:vimwiki_list = [
	\{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/todo', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/nvim', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/documentation', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/documentation/linux', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/programming', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/programming/go', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/linux', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/homelab', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/homelab/proxmox', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/homelab/nextcloud', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/homelab/gitea', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/homelab/opnsense', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/homelab/pihole', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/linux/scripting', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/linux/nicetoknow', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/ansible', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] },
	\{'path': '~/vimwiki/tech', 'syntax': 'markdown', 'ext': '.md', 'exclude_files': ['**/README.md', '**/Readme.md'] }]
let g:vimwiki_diary_months = {
      \ 1: 'January', 2: 'February', 3: 'March',
      \ 4: 'April', 5: 'May', 6: 'June',
      \ 7: 'July', 8: 'August', 9: 'September',
      \ 10: 'October', 11: 'November', 12: 'December'
      \ }
