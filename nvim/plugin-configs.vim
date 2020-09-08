" prettier
let g:prettier#config#use_tabs = 'false'
let g:prettier#autoformat_config_present = 1

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline_powerline_fonts = 1

"Emmet
let g:user_emmet_expandabbr_key='<c-space>'

" Scalpel
let g:ScalpelCommand='S'

" Nvim-Lsp
" pip install 'python-language-server[all]'
lua << END
require'nvim_lsp'.tsserver.setup{}
require'nvim_lsp'.vimls.setup{}
require'nvim_lsp'.jsonls.setup{}
require'nvim_lsp'.pyls.setup{}
require'nvim_lsp'.cssls.setup{}
require'nvim_lsp'.clangd.setup{}
END

let g:coc_global_extensions = ['coc-json', 'coc-snippets']
let g:coc_snippet_next = '<tab>'
nmap <space>e :CocCommand explorer<CR>

" Vista.vim
let g:vista_fzf_preview = ['right:50%']
let g:vista_default_executive = 'ctags'
let g:vista_executive_for = {
      \ 'javascript': 'nvim_lsp',
      \ 'typescript': 'nvim_lsp',
      \ 'python': 'nvim_lsp',
      \ 'vim': 'nvim_lsp',
      \ 'json': 'nvim_lsp',
      \ 'css' : 'nvim_lsp',
      \ 'scss': 'nvim_lsp'
      \}

" vim-livedown
let g:livedown_browser = "brave"

" vim-rooter
let g:rooter_patterns = ['.git', '=notes', 'package.json', 'tsconfig.json', 'prettierrc.json', '=src']

" vim-fzf
let g:fzf_preview_window = 'right:0%'
nnoremap <c-f> :Files<cr>

" vimwiki
let g:vimwiki_table_mappings = 0
nmap <f1> <Plug>VimwikiNextLink
nmap <f2> <Plug>VimwikiAddHeaderLevel
nmap <f3> <Plug>VimwikiDiaryNextDay
nmap <f4> <Plug>VimwikiDiaryPrevDay
nmap <f5> <Plug>VimwikiPrevLink

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
let g:vifm_replace_netrw_cmd = 1
nnoremap <c-n> :Vifm<cr>
