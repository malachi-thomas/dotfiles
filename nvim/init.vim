" ======================================================================================
" Plugins

call plug#begin('~/.config/nvim/plugged')
" lua
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'steelsojka/completion-buffers'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'norcalli/snippets.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" Programming
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'airblade/vim-rooter'
Plug 'dense-analysis/ale'
Plug 'vifm/vifm.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'andrejlevkovitch/vim-lua-format' " lua formatter
Plug 'tpope/vim-eunuch'

" Testing
Plug 'sheerun/vim-polyglot'

" Vim Traning
Plug 'ThePrimeagen/vim-be-good'

" Notetaking
Plug 'vimwiki/vimwiki'

" Theam
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'mboughaba/i3config.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'shmargum/vim-sass-colors'
Plug 'ryanoasis/vim-devicons'
call plug#end()

"==================================================================================================
" Source Files

lua require('init')
lua require('nvim-snippets')

"==============================================================================
" Theme

autocmd vimenter * colorscheme gruvbox
set termguicolors
set t_Co=256
set background=dark
set number
set relativenumber
set guicursor=

"==============================================================================
" Basic Config

syntax enable
filetype plugin indent on
set wildmode=list:longest,full

set nobackup
set nowritebackup
set noswapfile
set nowrap
set hidden
set list
set tabstop=2
set shiftwidth=0
set expandtab
set smarttab
set smartindent
set autoindent
set splitbelow
set splitright
set showmode
set smartcase
set ignorecase
set inccommand=split
set nohlsearch
set mouse=a
set clipboard+=unnamedplus
set updatetime=50
set path+=.,**
set laststatus=2
set spelllang=en_gb
set matchpairs+=<:>
set shortmess+=c
set lazyredraw
set backspace=indent,eol,start
set completeopt=menuone,noinsert,noselect
set omnifunc=v:lua.vim.lsp.omnifunc
" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()
set foldmethod=syntax
autocmd! FileType fzf set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

"==================================================================================================
" Mappings

" Basic Movement
nnoremap <up> gkzz
nnoremap <down> gjzz
nnoremap dl :normal 0d$<cr>
nnoremap cl :normal 0c$<cr>
nnoremap yl :normal 0y$<cr>
nnoremap { {zz
nnoremap } }zz
nnoremap za zazz
inoremap <S-CR> <C-O>o
inoremap <C-CR> <C-O>O


" Buffers
nnoremap <tab> :tabn<cr>
nnoremap <s-tab> :tabp<cr>
nnoremap <c-s> :w!<cr>
nnoremap <c-f> :Files<cr>

" Extra
inoremap <esc> <right><esc>
nnoremap y "+y
inoremap <c-h> <c-w>
cnoremap <c-h> <c-w>
nnoremap <space>rg :Rg <C-R>=expand("<cword>")<cr><cr>
nnoremap <space>hw :h <c-r>=expand("<cword>>")<cr><cr>


" Unmap
nnoremap K <nop>
nnoremap Q <nop>
nnoremap <c-z> <nop>

" Visuale
vnoremap <up> <up>zz
vnoremap <down> <down>zz
vnoremap y "+y

"Substitutions {{{
nnoremap sl :s/<c-r>=expand("<cword>")<cr>//gi<left><left><left>
nnoremap sg :%s/<c-r>=expand("<cword>")<cr>//gi<left><left><left>
nnoremap Sl :s/<c-r>=expand("<cword>")<cr>//gic<left><left><left><left>
nnoremap Sg :%s/<c-r>=expand("<cword>")<cr>//gic<left><left><left><left>
vnoremap s :s///gi<left><left><left>
"Substitutions }}}


"Filetype Mappings {{{
autocmd filetype javascript nnoremap <silent><buffer><c-p> :w<cr>:!node %<cr>
autocmd filetype typescript nnoremap <silent><buffer><c-p> :w<cr>:!ts-node %<cr>
autocmd filetype typescript nnoremap <silent><buffer><c-l> :term tsc<cr>:bn<cr>
autocmd filetype python nnoremap <silent><buffer><c-p> :w<cr>:!python %<cr>
autocmd filetype vim nnoremap <silent><buffer><c-s> :w<cr>:so %<cr>
autocmd filetype lua nnoremap <silent><buffer><c-s> :w<cr>:luafile %<cr>
"Filetype Mappings }}}


" Command Mode
ca ls !ls -F
ca la !ls -aF
ca ll !ls -laF
ca mk !mkdir
ca to !touch
ca ex !chmod +x %<C-R>=Eatchar('\s')<cr>
ca rm !rm
ca rma !sudo rm -rv
ca so so $MYVIMRC
ca mkdir !mkdir
ca vifm Vifm
ca vrc e ~/dotfiles/nvim/init.vim
ca vma e ~/dotfiles/nvim/mappings.vim
ca vpl e ~/dotfiles/nvim/plugins.vim
ca vpc e ~/dotfiles/nvim/plugin-configs.vim
ca irc e ~/dotfiles/i3/config
ca pol e ~/dotfiles/polybar/config
ca kit e ~/dotfiles/kitty/kitty.conf
ca sxh e ~/dotfiles/sxhkd/sxhkdrc
ca bsp e ~/dotfiles/bspwm/bspwmrc
ca zsh e ~/dotfiles/zsh/.zshrc
ca mux e ~/dotfiles/tmux/tmux.conf
ca lrc e ~/dotfiles/nvim/lua/init.lua
ca vsn e ~/dotfiles/nvim/lua/nvim-snippets.lua
ca sp vsplit
ca p <c-r>=expand("%:.:h")<cr>/<c-r>=Eatchar('\s')<cr>
ca f <c-r>=expand("%:.")<cr><c-r>=Eatchar('\s')<cr>
ca ft <c-r>=expand(&ft)<cr><c-r>=Eatchar('\s')<cr>
" Command Mode }}}

" Testing
nnoremap <space><space> :Buffers<cr>
nnoremap <space>vs :vsplit<cr>
nnoremap <space>ta :tabnew %<cr>:Files<cr>


" Commenting
nnoremap <silent><space>gc mm:s/\v^/" <cr>`m
nnoremap <silent><space>gu mm:s/\v^" //<cr>`m
vnoremap <silent><space>gc :s/\v^/" <cr>
vnoremap <silent><space>gu :s/\v^" //<cr>

" Plugin Mappings {{{
nnoremap <space>tr :LuaTreeToggle<CR>
nnoremap <leader>r :LuaTreeRefresh<CR>
nnoremap <leader>n :LuaTreeFindFile<CR>
nnoremap <c-n> :TabVifm<cr>
nnoremap <silent><space>gd :lua vim.lsp.buf.definition()<cr>
nnoremap <silent><space>rn :lua vim.lsp.buf.rename()<cr>
nnoremap <space>sn :e ~/dotfiles/nvim/lua/nvim-snippets.lua<cr>
nmap <f1> <Plug>VimwikiNextLink
nmap <f2> <Plug>VimwikiAddHeaderLevel
nmap <f3> <Plug>VimwikiDiaryNextDay
nmap <f4> <Plug>VimwikiDiaryPrevDay
nmap <f5> <Plug>VimwikiPrevLink
imap <silent><expr><tab>
      \ <sid>check_back_space() ? "\<tab>" :
      \  completion#trigger_completion()
inoremap <silent><expr><up>
      \ pumvisible() ? "\<c-p>" :
      \ "\<c-o>zz\<up>\<c-o>zz"
inoremap <silent><expr><down>
      \ pumvisible() ? "\<c-n>" :
      \ "\<c-o>zz\<down>\<c-o>zz"
inoremap <c-space> <c-g>u<cmd>lua return require'snippets'.expand_or_advance(1)<CR>
ca mv Move
" Plugin Mappings }}}

"Plugin configs==========================================================================================

" ale
let g:ale_fixers = {
      \ 'typescript': ['eslint'],
      \ 'typescriptreact': ['eslint'],
      \ 'tsx': ['eslint'],
      \ 'javascript': ['eslint'],
      \ 'javascriptreact': ['eslint'],
      \ 'json': ['fixjson'],
      \ 'scss': ['stylelint'],
      \ 'markdown': ['prettier']
      \}
let g:ale_linters = {
      \ 'typescript': ['eslint'],
      \ 'typescriptreact': ['eslint'],
      \ 'tsx': ['eslint'],
      \ 'javascript': ['eslint'],
      \ 'javascriptreact': ['eslint'],
      \ 'json': ['fixjson'],
      \ 'scss': ['stylelint'],
      \ 'markdown': ['prettier']
      \}
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 1
let g:ale_linters_explicit = 1
let g:ale_lint_on_enter = 1
"let g:ale_sign_column_always = 0
let g:ale_set_signs = 0
let g:ale_virtualtext_cursor = 1
let g:ale_virtualtext_prefix = 'ﱢ '


"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline_powerline_fonts = 1

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
"let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!node_modules/**'"
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

" diagnostic-nvim
let g:diagnostic_enable_virtual_text = 1
let g:diagnostic_show_sign = 0
let g:space_before_virtual_text = 4
let g:diagnostic_virtual_text_prefix = 'ﱢ'

" lua_tree
let g:lua_tree_side = 'left'
let g:lua_tree_width = 30
let g:lua_tree_ignore = [ '.git', 'node_modules', '.cache' ]
let g:lua_tree_auto_open = 0 "0 by default, opens the tree when typing `vim $DIR` or `vim`
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
highlight LuaTreeFolderIcon guibg=blue

" Mappings=========================================================================================


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








" =============================================================================
" Vimscript

augroup autocmds
  autocmd!
  autocmd insertleave * normal zz
  autocmd bufenter * normal zz
  autocmd bufenter * set iskeyword-=# iskeyword+=-
  autocmd bufread ~/.config/i3/config set filetype=i3config
  autocmd bufread ~/.config/polybar/config set filetype=dosini
  autocmd bufread ~/.config/bspwm/bspwmrc set filetype=sh
  autocmd vimenter * AirlineTheme gruvbox
  autocmd bufwritepre *.vim normal mmgg=G`mzz
  autocmd FileType typescriptreact set filetype=typescript.tsx
  autocmd filetype javascriptreact set filetype=javascript.jsx
  autocmd filetype markdown setlocal wrap linebreak
  autocmd filetype markdown setlocal spell
  " autocmd VimEnter * if argc() == 0 | Vifm | endif
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")| exe "normal! g'\"" | endif " start vim on same line as exited
  autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))|   PlugInstall --sync | q| endif " PlugInstall on uninstalld plugins
  autocmd BufEnter * lua require'completion'.on_attach() -- " completion-nvim on all buffers
  autocmd BufEnter * lua require'diagnostic'.on_attach()
  autocmd BufWrite *.lua call LuaFormat() " lua formatter
  autocmd BufEnter * normal zR
  autocmd vimenter * normal zz
augroup end

" Functions
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

func Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunction


