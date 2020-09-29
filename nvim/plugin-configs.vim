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
                  \ 'vimwiki': ['prettier']
                  \}
let g:ale_fixers = {
                  \ 'typescript': ['eslint'],
                  \ 'typescriptreact': ['eslint'],
                  \ 'javascriptreact': ['eslint'],
                  \ 'javascript': ['eslint'],
                  \ 'json': ['fixjson'],
                  \ 'scss': ['eslint'],
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
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline_powerline_fonts = 1

" completion-nvim
let g:completion_enable_snippet = 'UltiSnips'
let g:completion_matching_strategy_list = ['exact']
let g:completion_matching_ignore_case = 1
let g:completion_trigger_character = ['.']
let g:completion_trigger_keyword_length = 1
let g:completion_trigger_on_delete = 0
let g:completion_enable_auto_signature = 0
let g:completion_enable_auto_hover = 0
let g:completion_sorting = 'none'
let g:completion_confirm_key = ""
let g:completion_enable_auto_paren = 0
let g:completion_chain_complete_list = {
                  \'default' : [
                  \  {'complete_items': ['UltiSnips', 'buffers', 'path', 'lsp']}
                  \ ]}


" vim-fzf
let g:fzf_layout = { 'window': { 'width': 0.6, 'height': 0.6 }}
let g:fzf_preview_window = ''
let g:fzf_buffers_jump = 1
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

let g:vifm_replace_netrw = 1
let g:loaded_netrw  = 1
let g:VM_default_mappings = 0

