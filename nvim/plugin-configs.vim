"Plugin configs==========================================================================================

" ale
let g:ale_linters = {
      \ 'typescript': ['prettier'],
      \ 'typescriptreact': ['prettier'],
      \ 'javascriptreact': ['prettier'],
      \ 'javascript': ['prettier'],
      \ 'json': ['fixjson'],
      \ 'scss': ['stylelint'],
      \ 'sass': ['stylelint'],
      \ 'css': ['stylelint'],
      \ 'markdown': ['prettier'],
      \ 'vimwiki': ['prettier']
      \}
let g:ale_fixers = {
      \ 'typescript': ['prettier'],
      \ 'typescriptreact': ['prettier'],
      \ 'javascriptreact': ['prettier'],
      \ 'javascript': ['prettier'],
      \ 'json': ['fixjson'],
      \ 'scss': ['prettier'],
      \ 'sass': ['stylelint'],
      \ 'css': ['stylelint'],
      \ 'markdown': ['prettier'],
      \ 'vimwiki': ['prettier']
      \}
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 1
let g:ale_linters_explicit = 1
let g:ale_lint_on_enter = 1
let g:ale_set_signs = 0

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline_powerline_fonts = 1

" completion-nvim
let g:completion_enable_snippet = 'UltiSnips'
let g:completion_matching_strategy_list = ['exact']
let g:completion_matching_ignore_case = 1
let g:completion_trigger_character = ['.', ':']
let g:completion_trigger_keyword_length = 1
let g:completion_trigger_on_delete = 0
let g:completion_enable_auto_signature = 0
let g:completion_enable_auto_hover = 0
let g:completion_sorting = 'none'
let g:completion_confirm_key = ""
let g:completion_chain_complete_list = {
      \'default' : [
      \    {'complete_items': ['UltiSnips', 'path', 'lsp', 'buffers']}
      \ ]}

" vim-fzf
" let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 }}
let $FZF_DEFAULT_OPTS = "--reverse -e"
let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!**/node_modules/**' --glob '!**/.git/**'"
let g:fzf_preview_window = ''
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

" vifm
let g:vifm_replace_netrw = 1
let g:loaded_netrw = 0

" diagnostic-nvim
let g:diagnostic_enable_virtual_text = 1
let g:diagnostic_virtual_text_prefix = 'ﱢ'
let g:diagnostic_trimmed_virtual_text = '30'
let g:space_before_virtual_text = 4
let g:diagnostic_show_sign = 2


" UltiSnips
let g:UltiSnipsSnippetDirectories = ['~/dotfiles/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger="<c-cr>"
let g:UltiSnipsJumpForwardTrigger="<m-right>"
let g:UltiSnipsJumpBackwardTrigger="<m-left>"


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
let g:usehr_emmet_install_global = 0
let g:user_emmet_settings = {
      \  'javascriptreact' : {
      \      'extends' : 'jsx',
      \  },
      \}
