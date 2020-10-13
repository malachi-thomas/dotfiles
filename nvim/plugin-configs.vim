"Plugin configs==========================================================================================

" ale
let g:ale_linters = {
      \ 'typescript': ['eslint'],
      \ 'typescriptreact': ['eslint'],
      \ 'javascriptreact': ['eslint'],
      \ 'javascript': ['eslint'],
      \ 'json': ['fixjson'],
      \ 'scss': ['stylelint'],
      \ 'sass': ['stylelint'],
      \ 'css': ['stylelint'],
      \ 'markdown': ['prettier'],
      \ 'vimwiki': ['prettier'],
      \ 'python': ['autopep8']
      \}
let g:ale_fixers = {
      \ 'typescript': ['prettier'],
      \ 'typescriptreact': ['prettier'],
      \ 'javascriptreact': ['prettier'],
      \ 'javascript': ['eslint'],
      \ 'json': ['fixjson'],
      \ 'scss': ['prettier'],
      \ 'sass': ['stylelint'],
      \ 'css': ['stylelint'],
      \ 'markdown': ['prettier'],
      \ 'vimwiki': ['prettier'],
      \ 'python': ['autopep8']
      \}
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 1
let g:ale_linters_explicit = 1
let g:ale_lint_on_enter = 1
let g:ale_set_signs = 0

"Airline
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#tabs_label = ' '
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_nr = 0 " no tab number
let g:airline#extensions#tabline#show_tab_count = 0 " no tab number on right hand side

" completion-nvim
let g:completion_enable_snippet = 'UltiSnips'
let g:completion_matching_strategy_list = ['exact']
let g:completion_matching_ignore_case = 1
let g:completion_trigger_keyword_length = 1
let g:completion_trigger_on_delete = 0
let g:completion_enable_auto_signature = 0
let g:completion_enable_auto_hover = 0
let g:completion_sorting = 'none'
let g:completion_confirm_key = ""
let g:completion_enable_auto_paren = 0
let g:completion_trigger_character = ['.']
let g:completion_chain_complete_list = {
      \'default' : [
      \  {'complete_items': ['UltiSnips', 'tags', 'path', 'lsp', 'buffers']}
      \ ]}

" vim-fzf
let g:fzf_layout = { 'window': { 'width': 1, 'height': 1 }}

let g:fzf_preview_window = ''
let g:fzf_buffers_jump = 1
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'vsplit' }

command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --smart-case --glob "!**/node_modules/**" --glob "!**/package-lock.json" '.shellescape(<q-args>), 1,
      \   fzf#vim#with_preview(), <bang>0)


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

" diagnostic-nvim
let g:diagnostic_enable_virtual_text = 1
let g:diagnostic_virtual_text_prefix = 'ﱢ'
let g:space_before_virtual_text = 4
let g:diagnostic_show_sign = 2


" UltiSnips
let g:UltiSnipsSnippetDirectories = ['~/dotfiles/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger="<c-cr>"
let g:UltiSnipsJumpForwardTrigger="<c-cr>"
let g:UltiSnipsJumpBackwardTrigger="<c-cr>"

" markdown preview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'brave'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '${name}'

" emmet-vim
let g:user_emmet_settings = {
      \  'javascriptreact' : {
      \      'extends' : 'jsx',
      \  },
      \}
" clever_f.vim
let g:clever_f_across_no_line = 1
let g:clever_f_smart_case = 1

let g:loaded_netrw  = 1

" vim-vista
let g:vista_fzf_preview = ['right:0%']

" vim-rooter
let g:rooter_patterns = ['=src', '=nvim', '=dotfiles', '=plugged']

" vim-gutentags
let g:gutentags_add_default_project_roots = 0
let g:gutentags_project_root = ['src', 'nvim', 'javascript']
let g:gutentags_cache_dir = expand('~/gutentags_cache')
let g:gutentags_exclude_filetypes = ['sxhkdrc']
let g:gutentags_ctags_extra_args = [
      \ '--tag-relative=yes',
      \ '--fields=+ailmnS',
      \ ]

let g:gutentags_ctags_exclude = [ '*.git', '*.svg', '*.hg', '*/tests/*', 'build', 'dist', '*sites/*/files/*', 'bin', 'node_modules', 'bower_components', 'cache', 'compiled', 'docs', 'example', 'bundle', 'vendor', '*.md', '*-lock.json', '*.lock', '*bundle*.js', '*build*.js', '.*rc*', '*.json', '*.min.*', '*.map', '*.bak', '*.zip', '*.pyc', '*.class', '*.sln', '*.Master', '*.csproj', '*.tmp', '*.csproj.user', '*.cache', '*.pdb', 'tags*', 'cscope.*', '*.css', '*.less', '*.scss', '*.exe', '*.dll', '*.mp3', '*.ogg', '*.flac', '*.swp', '*.swo', '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png', '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2', '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx']
