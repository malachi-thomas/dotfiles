"Plugin configs==========================================================================================

" ale
let g:ale_linters = {
  \ 'typescript': ['eslint'],
  \ 'typescriptreact': ['eslint'],
  \ 'javascriptreact': ['eslint'],
  \ 'javascript': ['eslint'],
  \ 'json': ['fixjson'],
  \ 'jsonc': ['fixjson'],
  \ 'scss': ['stylelint'],
  \ 'sass': ['stylelint'],
  \ 'css': ['stylelint'],
  \ 'markdown': ['prettier'],
  \ 'vimwiki': ['prettier'],
  \ 'python': ['autopep8']
  \ }
let g:ale_fixers = {
  \ 'typescript': ['prettier'],
  \ 'typescriptreact': ['prettier'],
  \ 'javascriptreact': ['prettier'],
  \ 'javascript': ['eslint'],
  \ 'json': ['fixjson'],
  \ 'jsonc': ['fixjson'],
  \ 'scss': ['prettier'],
  \ 'sass': ['stylelint'],
  \ 'css': ['stylelint'],
  \ 'markdown': ['prettier'],
  \ 'vimwiki': ['prettier'],
  \ 'python': ['autopep8']
  \ }
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 1
let g:ale_linters_explicit = 1
let g:ale_lint_on_enter = 1
let g:ale_set_signs = 0

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
let g:completion_matching_strategy_list = ['exact']
let g:completion_matching_ignore_case = 1
let g:completion_trigger_keyword_length = 1
let g:completion_trigger_on_delete = 0
let g:completion_enable_auto_signature = 0
let g:completion_enable_auto_hover = 0
let g:completion_sorting = 'length'
let g:completion_confirm_key = ""
let g:completion_enable_auto_paren = 0
let g:completion_trigger_character = []
let g:completion_timer_cycle = 100
let g:completion_enable_auto_popup = 1
let g:completion_enable_snippet = 'vim-vsnip'
let g:completion_auto_change_source = 1


let g:completion_chain_complete_list = [
  \ {'complete_items': ['vim-vsnip']},
  \ {'complete_items': ['lsp', 'buffer']},
  \{'mode': '<c-p>'},
  \{'mode': '<c-n>'}
  \ ]

" vim-vsnip
let g:vsnip_snippet_dir = expand('~/dotfiles/nvim/snippets')

" diagnostic-nvim
let g:diagnostic_enable_virtual_text = 1
let g:diagnostic_virtual_text_prefix = 'ﱢ'
let g:space_before_virtual_text = 4
let g:diagnostic_show_sign = 2

" vim-rainbow
let g:rainbow_active = 1

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
let g:rooter_patterns = ['=src', '=zsh', '=nvim', '=notes']

" vim-snipe
let g:snipe_jump_tokens = 'tehunosadicgprlmkwjvqzfybx'
" nmap f <Plug>(snipe-f)
" nmap F <Plug>(snipe-F)

let g:clever_f_across_no_line = 1
let g:clever_f_smart_case = 1
nmap ; <Plug>(clever-f-repeat-forward)
nmap , <Plug>(clever-f-repeat-back)

let g:lightline = { 'colorscheme': 'gruvbox' }
let g:indent_guides_enable_on_vim_startup = 1

