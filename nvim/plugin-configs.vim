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

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline_powerline_fonts = 1

"Emmet
let g:user_emmet_expandabbr_key='<c-space>'

" Scalpel
let g:ScalpelCommand='S'

" completion-nvim
let g:completion_enable_snippet = 'vim-vsnip'
let g:completion_matching_strategy_list = ['exact']
let g:completion_matching_ignore_case = 1
let g:completion_trigger_character = ['.']
let g:completion_trigger_keyword_length = 1
let g:completion_trigger_on_delete = 0
let g:completion_enable_auto_signature = 0
let g:completion_enable_auto_hover = 0
let g:completion_enable_auto_paren = 1
let g:completion_sorting = 'none'
let g:completion_confirm_key = ""
let g:completion_enable_snippet = 'vim-vsnip'
let g:completion_chain_complete_list = {
      \'default' : [
      \    {'complete_items': ['vim-vsnip', 'lsp', 'path', 'buffers']},
      \]}

" vim-livedown
let g:livedown_browser = "brave"

" vim-rooter
let g:rooter_patterns = ['.git', '=notes', 'package.json', 'tsconfig.json', 'prettierrc.json', '=.config']

" vim-fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 }}
let $FZF_DEFAULT_OPTS = '--reverse -e'
let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
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
let g:vsnip_filetypes.tsx = ['typescript', 'tsx', 'javascript']
let g:vsnip_filetypes.jsx = ['javascript', 'jsx']
let g:vsnip_filetypes.typescript = ['javascript']


let g:vsnip_snippet_dir = expand('~/dotfiles/nvim/vsnip')
let g:diagnostic_enable_virtual_text = 1

" Mappings=========================================================================================

imap <silent><expr><tab>
      \ pumvisible() ? "\<Plug>(completion_confirm_completion)" :
      \ vsnip#expandable() ? "\<Plug>(vsnip-expand-or-jump)" :
      \ <sid>check_back_space() ? "\<tab>" : 
      \ completion#trigger_completion()
inoremap <silent><expr><s-tab> 
      \ pumvisible() ? "\<c-p>" :
      \ "\<s-tab>"
inoremap <silent><expr><up>
      \ pumvisible() ? "\<c-p>" :
      \ "\<c-o>zz\<up>\<c-o>zz"
inoremap <silent><expr><down> 
      \ pumvisible() ? "\<c-n>" :
      \ "\<c-o>zz\<down>\<c-o>zz"
imap <expr><cr>
      \ pumvisible() ? complete_info()["selected"] != "-1" ? "\<Plug>(completion_confirm_completion)" :
      \ "\<c-e>\<cr>" : "\<cr>"
imap <expr><right>
      \ pumvisible() ? complete_info()["selected"] != "-1" ? "\<Plug>(completion_confirm_completion)" :
      \ "\<c-e>\<right>" : "\<right>"
nnoremap <space>f :Vista finder<cr>
nnoremap <c-n> :TabVifm<cr>
nnoremap <space>us :Files ~/.config/nvim/UltiSnips<cr>
nnoremap <space>vs :e ~/dotfiles/nvim/vsnip/<c-r>=expand('%:e')<cr>.json
nnoremap <space>vv :Files ~/dotfiles/nvim/vsnip<cr>
nnoremap <silent><space>gd :lua vim.lsp.buf.definition()<cr>
nnoremap <silent><space>rn :lua vim.lsp.buf.rename()<cr>
nnoremap ZZ :wq!<cr>
nmap <f1> <Plug>VimwikiNextLink
nmap <f2> <Plug>VimwikiAddHeaderLevel
nmap <f3> <Plug>VimwikiDiaryNextDay
nmap <f4> <Plug>VimwikiDiaryPrevDay
nmap <f5> <Plug>VimwikiPrevLink


" VimL=============================================================================================


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction


