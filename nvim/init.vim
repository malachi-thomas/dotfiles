"==================================================================================================
" Source Files
source ~/dotfiles/nvim/mappings.vim
source ~/dotfiles/nvim/plugins.vim
source ~/dotfiles/nvim/plugin-configs.vim
lua require('init')
"==============================================================================
" Theme

set termguicolors
colorscheme gruvbox
set background=dark
set number
set relativenumber
set guicursor=

" Statusline
set statusline=
set statusline+=%#DiffDelete#
set statusline+=\%m
set statusline+=%#DiffAdd#
set statusline+=\[\%f]
set statusline+=%#StatusLine#
set statusline+=\%=
set statusline+=%#DiffAdd#
set statusline+=[\%l/\%L]


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
set hlsearch
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

" =============================================================================
" Vimscript

augroup autocmds
  autocmd!
  autocmd BufEnter * lua require'completion'.on_attach() -- " completion-nvim on all buffers
  autocmd BufEnter * lua require'diagnostic'.on_attach()
  autocmd BufEnter * normal zz
  autocmd InsertLeave * normal zz
  autocmd FileType vimwiki set spell
  autocmd BufEnter * set iskeyword-=# iskeyword+=-
  autocmd BufRead ~/dotfiles/i3/config set filetype=i3config
  autocmd BufRead ~/dotfiles/polybar/config set filetype=dosini
  autocmd BufRead ~/dotfiles/bspwm/bspwmrc set filetype=sh
  autocmd BufRead ~/dotfiles/sxhkd/sxhkdrc set filetype=sh
  autocmd VimEnter,SourcePost * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))|   PlugInstall --sync | q| endif " PlugInstall on uninstalld plugins
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")| exe "normal! g'\"" | endif " start vim on same line as exited
  autocmd BufWritePre *.vim normal mmgg=G`mzz
  autocmd TextYankPost * call setreg("+", getreg("*")) " makes the + register the same as the * register
  " autocmd VimEnter * if argc() == 0 | q | endif " dont open vim with a empty buffer
augroup end

