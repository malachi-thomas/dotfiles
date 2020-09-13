" ======================================================================================
" Source Files

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/plugin-configs.vim
source $HOME/.config/nvim/mappings.vim
lua require('nvim-lsp')
lua require('nvim-snippets')



"==============================================================================
" Theme

autocmd vimenter * colorscheme gruvbox
set termguicolors
set t_Co=256
set background=dark
"set number
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
set hlsearch
set inccommand=split
set incsearch
set mouse=a
set clipboard+=unnamedplus
set updatetime=50
set path=.,**
set laststatus=2
set spelllang=en_gb
set matchpairs+=<:>
set shortmess+=c
set lazyredraw
set backspace=indent,eol,start
set completeopt=menuone,noinsert,noselect
set omnifunc=v:lua.vim.lsp.omnifunc
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

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
  autocmd bufread *.tsx set filetype=typescript.tsx
  autocmd bufread *.jsx set filetype=javascript.jsx
  autocmd filetype markdown setlocal wrap linebreak
  autocmd filetype markdown setlocal spell
  autocmd VimEnter * if argc() == 0 | Vifm | endif
<<<<<<< master
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")| exe "normal! g'\"" | endif
=======
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")| exe "normal! g'\"" | endif " start vim on same line as exited
  autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))|   PlugInstall --sync | q| endif " PlugInstall on uninstalld plugins
  autocmd BufEnter * lua require'completion'.on_attach() -- " completion-nvim on all buffers
  autocmd BufEnter * lua require'diagnostic'.on_attach()
  autocmd BufWrite *.lua call LuaFormat() " lua formatter
>>>>>>> local
augroup end
