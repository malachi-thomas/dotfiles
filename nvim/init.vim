"==================================================================================================
" Source Files
source ~/dotfiles/nvim/mappings.vim
source ~/dotfiles/nvim/plugins.vim
source ~/dotfiles/nvim/plugin-configs.vim
source ~/dotfiles/nvim/my-auto-pairs.vim

"==================================================================================================
" Theme

colorscheme gruvbox
set background=dark
set number
set relativenumber
set guicursor=
set colorcolumn=100
set termguicolors
highlight ColorColumn ctermbg=0 guibg=lightgrey

"==================================================================================================
"Lua

if has('nvim')
  lua require 'init'
  lua require 'colorizer'.setup()
  " nnoremap <c-z> :lua require('test').hello_world()<cr>
else
  set nocompatible
end

"==================================================================================================
" Basic Config

syntax enable
filetype plugin indent on
set wildmode=longest,full
if has('nvim')
  set inccommand=split
endif
set nobackup
set nowritebackup
set noswapfile
set nowrap
set hidden
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
set mouse=a
set clipboard+=unnamed
set updatetime=50
set path+=.,**
set laststatus=2
set spelllang=en_gb
set matchpairs+=<:>
set shortmess+=c
set lazyredraw
set backspace=indent,eol,start
set omnifunc=v:lua.vim.lsp.omnifunc
set list
set listchars=tab:→\ ,eol:↲,trail:•
set completeopt=menuone,noinsert
set noshowmode
set tags=~/gutentags_cache

" =============================================================================
" Vimscript

augroup autocmds
  autocmd!
  autocmd BufEnter * normal zz
  autocmd InsertLeave * normal zz
  autocmd FileType vimwiki set spell
  autocmd BufEnter * set iskeyword-=# iskeyword+=-
  autocmd BufRead ~/dotfiles/i3/config set filetype=i3config
  autocmd BufRead ~/dotfiles/polybar/config set filetype=dosini
  autocmd BufRead ~/dotfiles/bspwm/bspwmrc set filetype=sh
  " autocmd BufRead ~/dotfiles/sxhkd/sxhkdrc set filetype=sh
  autocmd VimEnter,SourcePost * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))|   PlugInstall --sync | q| endif " PlugInstall on uninstalld plugins
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")| exe "normal! g'\"" | endif " start vim on same line as exited
  autocmd BufWritePre *.vim  normal mmgg=G`mzz
  autocmd BufWritePre *.scss  normal mmgg=G`mzz
  " autocmd VimEnter * if argc() == 0 | q | endif " dont open vim with a empty buffer
  autocmd filetype javascript nnoremap <silent><buffer><c-p> :w<cr>:!node %<cr>
  autocmd filetype typescript nnoremap <silent><buffer><c-p> :w<cr>:!ts-node %<cr>
  autocmd filetype python nnoremap <silent><buffer><c-p> :w<cr>:!python %<cr>
  autocmd filetype vim nnoremap <silent><buffer><c-s> :w<cr>:so $MYVIMRC<cr>
  autocmd filetype lua nnoremap <silent><buffer><c-s> :w<cr>:luafile %<cr>

  if has('nvim')
    autocmd TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=500 } -- highlight what was just yanked
    autocmd TextYankPost * call setreg("+", getreg("*")) " makes the + register the same as the * register
    autocmd BufEnter * lua require'completion'.on_attach() -- " completion-nvim on all buffers
    autocmd BufEnter * lua require'diagnostic'.on_attach()
  endif
augroup end

lua <<EOF
vim.lsp.callbacks['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
vim.lsp.callbacks['textDocument/references'] = require'lsputil.locations'.references_handler
vim.lsp.callbacks['textDocument/definition'] = require'lsputil.locations'.definition_handler
vim.lsp.callbacks['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
vim.lsp.callbacks['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
vim.lsp.callbacks['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
vim.lsp.callbacks['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
vim.lsp.callbacks['workspace/symbol'] = require'lsputil.symbols'.workspace_handler
EOF
