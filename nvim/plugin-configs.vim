"Plugin configs==========================================================================================

" ale
let g:ale_fixers = {
                  \ 'typescript': ['prettier'],
                  \ 'typescriptreact': ['prettier'],
                  \ 'javascript': ['prettier'],
                  \ 'javascriptreact': ['prettier'],
                  \ 'json': ['fixjson'],
                  \ 'scss': ['stylelint']
                  \}
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:ale_linters_explicit = 1

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline_powerline_fonts = 1


" Scalpel
let g:ScalpelCommand='S'

" completion-nvim
let g:completion_enable_snippet = v:null
let g:completion_matching_strategy_list = ['exact']
let g:completion_matching_ignore_case = 1
let g:completion_trigger_character = ['.', ':']
let g:completion_trigger_keyword_length = 1
let g:completion_trigger_on_delete = 0
let g:completion_enable_auto_signature = 0
let g:completion_enable_auto_hover = 0
let g:completion_enable_auto_paren = 1
let g:completion_sorting = 'none'
let g:completion_confirm_key = ""
let g:completion_enable_snippet = v:null
let g:completion_chain_complete_list = {
                  \'default' : [
                  \    {'complete_items': ['lsp', 'path', 'buffers']}
                  \ ]}

" vim-livedown
let g:livedown_browser = "brave"

" vim-rooter
let g:rooter_patterns = ['.git', '=notes', 'package.json', 'tsconfig.json', 'prettierrc.json', '=.config']

" vim-fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 }}
let $FZF_DEFAULT_OPTS = "--reverse -e"
let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!node_modules/**'"
let g:fzf_colors = {
                  \'fg':      ['fg', 'Normal'],
                  \ 'bg':      ['bg', 'Normal'],
                  \ 'hl':      ['fg', 'Comment'],
                  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
                  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
                  \ 'hl+':     ['fg', 'Statement'],
                  \ 'info':    ['fg', 'PreProc'],
                  \ 'border':  ['fg', 'Ignore'],
                  \ 'prompt':  ['fg', 'Conditional'],
                  \ 'pointer': ['fg', 'Exception'],
                  \ 'marker':  ['fg', 'Keyword'],
                  \ 'spinner': ['fg', 'Label'],
                  \ 'header':  ['fg', 'Comment'] }

" vimwiki
let g:vimwiki_table_mappings = 0
let g:vimwiki_table_auto_fmt=0
let g:vimwiki_list = [{
                  \ 'path': '~/dotfiles/notes',
                  \ 'syntax': 'markdown',
                  \ 'ext':'.md',
                  \}]

" PaperColor
let g:PaperColor_Theme_Options = {
                  \   'theme': {
                  \     'default': {
                  \       'allow_bold': 1,
                  \       'allow_italic': 1,
                  \       'transparent_background': 1
                  \     }}}

" vifm
let g:vifm_replace_netrw = 1
let g:loaded_netrw = 0

" vim-vsnip
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.tsx = ['tsx']
let g:vsnip_filetypes.jsx = ['jsx']
let g:vsnip_snippet_dir = expand('~/dotfiles/nvim/vsnip')

" UltiSnips
let g:UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger="<a-p>"
let g:UltiSnipsJumpBackwardTrigger="<a-p>"
let g:UltiSnipsSnippetDirectories = ["~/dotfiles/nvim/UltiSnips"]

" diagnostic-nvim
let g:diagnostic_enable_virtual_text = 1
let g:diagnostic_show_sign = 0
let g:space_before_virtual_text = 4

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

let g:lua_tree_side = 'left'
let g:lua_tree_width = 30
let g:lua_tree_ignore = [ '.git', 'node_modules', '.cache' ]
let g:lua_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:lua_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
let g:lua_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:lua_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:lua_tree_hide_dotfiles = 0 "0 by default, this option hides files and folders starting with a dot `.`
let g:lua_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:lua_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:lua_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:lua_tree_show_icons = {
                  \ 'git': 1,
                  \ 'folders': 0,
                  \ 'files': 0,
                  \}
let g:lua_tree_bindings = {
                  \ 'edit':            ['<CR>', 'o'],
                  \ 'edit_vsplit':     '<C-v>',
                  \ 'edit_split':      '<C-x>',
                  \ 'edit_tab':        '<C-t>',
                  \ 'toggle_ignored':  'I',
                  \ 'toggle_dotfiles': 'H',
                  \ 'refresh':         'R',
                  \ 'preview':         '<Tab>',
                  \ 'cd':              '<C-]>',
                  \ 'create':          'a',
                  \ 'remove':          'd',
                  \ 'rename':          'r',
                  \ 'cut':             'x',
                  \ 'copy':            'c',
                  \ 'paste':           'p',
                  \ 'prev_git_item':   '[c',
                  \ 'next_git_item':   ']c',
                  \}
let g:lua_tree_icons = {
                  \ 'default': '',
                  \ 'symlink': '',
                  \ 'git': {
                  \   'unstaged': "✗",
                  \   'staged': "✓",
                  \   'unmerged': "",
                  \   'renamed': "➜",
                  \   'untracked': "★"
                  \   },
                  \ 'folder': {
                  \   'default': "",
                  \   'open': ""
                  \   }
                  \ }

nnoremap <space>tr :LuaTreeToggle<CR>
nnoremap <leader>r :LuaTreeRefresh<CR>
nnoremap <leader>n :LuaTreeFindFile<CR>
highlight LuaTreeFolderIcon guibg=blue

" Mappings=========================================================================================

imap <silent><expr><tab>
                  \ <sid>check_back_space() ? "\<tab>" :
                  \  completion#trigger_completion()
inoremap <silent><expr><up>
                  \ pumvisible() ? "\<c-p>" :
                  \ "\<c-o>zz\<up>\<c-o>zz"
inoremap <silent><expr><down>
                  \ pumvisible() ? "\<c-n>" :
                  \ "\<c-o>zz\<down>\<c-o>zz"
nnoremap <c-n> :TabVifm<cr>
nnoremap <silent><space>gd :lua vim.lsp.buf.definition()<cr>
nnoremap <silent><space>rn :lua vim.lsp.buf.rename()<cr>
nnoremap <space>sn :e ~/dotfiles/nvim/lua/nvim-snippets.lua<cr>
nmap <f1> <Plug>VimwikiNextLink
nmap <f2> <Plug>VimwikiAddHeaderLevel
nmap <f3> <Plug>VimwikiDiaryNextDay
nmap <f4> <Plug>VimwikiDiaryPrevDay
nmap <f5> <Plug>VimwikiPrevLink
inoremap <c-space> <c-g>u<cmd>lua return require'snippets'.expand_or_advance(1)<CR>
ca mv Move

" autocmd FileType typescriptreact nnoremap <buffer><space>ss :e ~/dotfiles/nvim/vsnip/tsx.json<cr>
" autocmd FileType vim nnoremap <buffer><space>ss :e ~/dotfiles/nvim/vsnip/vim.json<cr>
" autocmd FileType html nnoremap <buffer><space>ss :e ~/dotfiles/nvim/vsnip/html.json<cr>
" autocmd FileType typescript nnoremap <buffer><space>ss :e ~/dotfiles/nvim/vsnip/typescript.json<cr>
" autocmd FileType vimwiki nnoremap <buffer><space>ss :e ~/dotfiles/nvim/vsnip/vimwiki.json<cr>


" VimL=============================================================================================

function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~ '\s'
endfunction


