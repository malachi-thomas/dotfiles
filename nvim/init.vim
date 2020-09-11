" ======================================================================================
" Source Files

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/plugin-configs.vim
source $HOME/.config/nvim/mappings.vim

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
set nohlsearch
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
  autocmd filetype markdown setlocal wrap linebreak
  autocmd filetype markdown setlocal spell
  autocmd VimEnter * if argc() == 0 | Vifm | endif
  autocmd BufEnter * lua require'completion'.on_attach()
  autocmd BufEnter * lua require'diagnostic'.on_attach()
augroup end
