" ============================================================================
" File:        reuse_none.vim
" Description: Plugin for NERD Tree that prevents reuse of a window from
" another tab when activating a file node. This goes further than
" reuse_currenttab by also not reusing a window within the current tab. The
" directory list buffer will always be replaced by a file buffer.
" Maintainer:  Morton Fox <github@qslw.com>
" Last Change: March 23, 2018
" ============================================================================

if exists('g:loaded_nerdtree_reuse_none')
    finish
endif
let g:loaded_nerdtree_reuse_none = 1

call NERDTreeAddKeyMap({'key': 'o', 'callback': 'NERDTreeMyOpenFile', 'scope': 'FileNode', 'override': 1})
call NERDTreeAddKeyMap({'key': '<2-LeftMouse>', 'callback': 'NERDTreeMyOpenFile', 'scope': 'FileNode', 'override': 1})

" Activate a file node. Do not reuse window from another tab.
function! NERDTreeMyOpenFile(node)
    call a:node.activate({'reuse': '', 'where': 'p'})
endfunction

" vim: set tw=0 sw=4:

