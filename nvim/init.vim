" ======================================================================================
" Source Files

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/plugin-configs.vim
source $HOME/.config/nvim/mappings.vim


"========================================================================================
" Theme

colorscheme PaperColor
set termguicolors
set t_Co=256
set background=light
"set number
set relativenumber
set guicursor=
set cursorline
set cursorcolumn

" Netew
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_bufsettings = ''
autocmd filetype netrw nnoremap <silent><buffer><c-q> :q!<cr>
autocmd filetype netrw nnoremap <silent><buffer><c-w> <nop>
autocmd filetype netrw nnoremap <silent><buffer>ZZ :q!<cr>

"========================================================================================
" Basic Config

set nocompatible
filetype plugin on
filetype indent on
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
set incsearch
set mouse=a
set clipboard+=unnamedplus
set updatetime=2000
set path+=**
set laststatus=2
set spelllang=en_gb
set matchpairs+=<:>
set shortmess+=c
set lazyredraw
set backspace=indent,eol,start
set completeopt=menuone,noinsert,noselect
set autochdir

" Filetype Config
autocmd filetype html setlocal tabstop=4

" =======================================================================================
" Vimscript

augroup autocmds
  autocmd!
  autocmd insertleave * normal l
  autocmd insertleave * normal zz

  autocmd bufenter * normal zz
  autocmd bufenter * set iskeyword-=# iskeyword+=-

  autocmd bufread ~/.config/i3/config set filetype=i3config
  autocmd bufread ~/.config/polybar/config set filetype=dosini
  autocmd bufread ~/.config/bspwm/bspwmrc set filetype=sh

  autocmd vimenter * syntax enable
  autocmd vimenter * AirlineTheme papercolor

  autocmd bufwritepre *.html normal mmgg=G`mzz
  autocmd bufwritepre *.json normal mmgg=G`mzz
  autocmd bufwritepre *.css normal mmgg=G`mzz
  autocmd bufwritepre *.yaml normal mmgg=G`mzz
  autocmd bufwritepre *.scss normal mmgg=G`mzz
  "autocmd bufwritepre *.md normal mmgg=G`mzz
  autocmd bufwritepre *.vim normal mmgg=G`mzz

  " Highlights
  autocmd vimenter * hi Search guibg=#5c6370
  autocmd vimenter * hi HighlightedyankRegion guibg=#5c6370

  " Scss
  autocmd bufwritepost style.scss, silent! make % public/style.css
  autocmd filetype scss setlocal makeprg=sass

  " Typescript
  autocmd filetype typescript setlocal makeprg=tsc
  " Markdown
  autocmd filetype markdown setlocal wrap linebreak
  autocmd filetype markdown setlocal spell

augroup end



" Enter Vim On The Same Line
if has("autocmd")
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")| exe "normal! g'\"" | endif
endif

