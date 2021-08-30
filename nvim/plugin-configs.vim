"Plugin configs==========================================================================================

" ale
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'typescript': 'eslint',
      \ 'json': 'fixjson',
      \ 'jsonc': 'fixjson',
      \ 'scss': 'stylelint',
      \ 'sass': 'stylelint',
      \ 'css': 'stylelint',
      \ 'python': 'autopep8',
      \ 'rust': ['rls', 'cargo'],
      \ 'swift': ['swiftlint', 'sourcekit-lsp', 'swift']
      \ }
let g:ale_fixers = {
      \ 'json': 'fixjson',
      \ 'jsonc': 'fixjson',
      \ 'scss': 'prettier',
      \ 'sass': 'stylelint',
      \ 'css': 'stylelint',
      \ 'python': 'autopep8',
      \ }
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 1
let g:ale_linters_explicit = 1
let g:ale_lint_on_enter = 1
let g:ale_set_signs = 0
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = ' '
let g:ale_hover_cursor = 0

let g:ale_echo_msg_error_str = '✗'
let g:ale_echo_msg_warning_str = ' '
let g:ale_echo_msg_format = '[%linter%] %s %severity%'

command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --smart-case --glob "!**/node_modules/**" --glob "!**/package-lock.json" '.shellescape(<q-args>), 1,
      \   fzf#vim#with_preview(), <bang>0)
let g:fzf_preview_window = []

" vimwiki
" let g:vimwiki_table_mappings = 0
" let g:vimwiki_table_auto_fmt=0
" let g:vimwiki_list = [{
"       \ 'path': '~/dotfiles/notes',
"       \ 'syntax': 'markdown',
"       \ 'ext':'.md',
"       \}]

" vim-gutentags
let g:gutentags_add_default_project_roots = 0
let g:gutentags_cache_dir = expand('~/.config/all-the-tags')
let g:gutentags_exclude_filetypes = ['sxhkdrc']
let g:gutentags_ctags_extra_args = [
      \ '--tag-relative=yes',
      \ '--fields=+ailmnS',
      \ ]

let g:gutentags_ctags_exclude = [ '*.git', '*.svg', '*.hg', '*/tests/*', 'build', 'dist', '*sites/*/files/*', 'bin', 'node_modules', 'bower_components', 'cache', 'compiled', 'docs', 'example', 'bundle', 'vendor', '*.md', '*-lock.json', '*.lock', '*bundle*.js', '*build*.js', '.*rc*', '*.json', '*.min.*', '*.map', '*.bak', '*.zip', '*.pyc', '*.class', '*.sln', '*.Master', '*.csproj', '*.tmp', '*.csproj.user', '*.cache', '*.pdb', 'tags*', 'cscope.*', '*.css', '*.less', '*.scss', '*.exe', '*.dll', '*.mp3', '*.ogg', '*.flac', '*.swp', '*.swo', '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png', '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2', '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx']

" nvim-complition
let g:completion_matching_strategy_list = ['exact', 'substring']
let g:completion_matching_ignore_case = 1
let g:completion_trigger_keyword_length = 1
let g:completion_trigger_on_delete = 0
let g:completion_enable_auto_signature = 0
let g:completion_enable_auto_hover = 0
let g:completion_sorting = 'smallest'
let g:completion_confirm_key = ""
let g:completion_enable_auto_paren = 0
let g:completion_trigger_character = ['.', '::']
let g:completion_timer_cycle = 100
let g:completion_enable_auto_popup = 1
let g:completion_enable_snippet = 'vim-vsnip'
let g:completion_auto_change_source = 1


let g:completion_chain_complete_list = [
  \ {'complete_items': ['vim-vsnip' ,'lsp', 'buffer']},
  \ ]

" vim-vsnip
let g:vsnip_snippet_dir = expand('~/dotfiles/snippets')

" startify
let g:startify_session_dir = '~/dotfiles/nvim/session'
let g:startify_files_number = 5
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Files']            },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ ]
let g:startify_bookmarks = [
      \ { 'vrc': '~/.config/nvim/init.vim' },
      \ { 'vma': '~/.config/nvim/mappings.vim' },
      \ { 'vpc': '~/.config/nvim/plugin-configs.vim' },
      \ { 'vpl': '~/.config/nvim/plugins.vim' },
      \ ]
let g:startify_custom_header = [
      \ '    _  __     _      ',
      \ '   / |/ /  __(_)_ _  ',
      \ '  /    / |/ / /  ` \ ',
      \ ' /_/|_/|___/_/_/_/_/ ',
      \]

" rooter
let g:rooter_targets = '*'
let g:rooter_silent_chdir = 1
let g:rooter_patterns = ['=zsh', '=nvim', '=notes', 'Cargo.toml']


let g:clever_f_across_no_line = 1
let g:clever_f_smart_case = 1
nmap ; <Plug>(clever-f-repeat-forward)
nmap , <Plug>(clever-f-repeat-back)

let g:lightline = { 'colorscheme': 'gruvbox' }

" let g:indent_guides_enable_on_vim_startup = 1

" let g:indentLine_char_list = ''
" let g:indentLine_bgcolor_gui = '#FF5F00'


" easy-searcch-replace
let g:easy_replace_enable = 1

" airline
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = ''
let g:airline_section_error = ''
let g:airline_section_warning = ''

" let g:dimfocus#bg = ['#181818', '000'] 
" let g:dimfocus#blacklist = {
" \ 'buffername': ['#FZF'],
" \ 'filetype': ['nerdtree', 'tagbar'],
" \}
" " let g:dimfocus#fg = ['#ffffff', 255] 


let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)


