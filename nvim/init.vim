" ======================================================================================
" Source Files

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/plugin-configs.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/pairs.vim

"========================================================================================
" Theme

colorscheme PaperColor
set termguicolors
set t_Co=256
set background=light
"set number
set relativenumber
set guicursor=
"set cursorline
"set cursorcolumn

" Netew
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_bufsettings = ''
autocmd filetype netrw nnoremap <silent><buffer><c-q> :q!<cr>
autocmd filetype netrw nnoremap <silent><buffer><c-w> <nop>
autocmd filetype netrw nnoremap <silent><buffer>ZZ :q!<cr>

"========================================================================================
" Basic Config

filetype plugin indent on
set wildmode=full
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
" set path=.,**
set laststatus=2
set spelllang=en_gb
set matchpairs+=<:>
set shortmess+=c
set lazyredraw
set backspace=indent,eol,start
set completeopt=menuone,noinsert,noselect
set complete="i,t,w,b,u,U,k,s,kspell"
nnoremap y "+y

autocmd filetype vim ia { {}<left>

" =======================================================================================
" Vimscript

augroup autocmds
  autocmd!
  autocmd insertleave * normal zz
  autocmd bufenter * normal zz
  autocmd bufenter * set iskeyword-=# iskeyword+=-
  autocmd bufread * cd %:p:h
  autocmd bufread ~/.config/i3/config set filetype=i3config
  autocmd bufread ~/.config/polybar/config set filetype=dosini
  autocmd bufread ~/.config/bspwm/bspwmrc set filetype=sh
  autocmd bufread *.tsx set filetype=typescript.tsx
  autocmd bufread *.jsx set filetype=javascript.jsx
  autocmd vimenter * syntax enable
  autocmd vimenter * AirlineTheme papercolor
  autocmd vimenter * hi Search guibg=#d4d4d4
  autocmd vimenter * hi HighlightedyankRegion guibg=#d4d4d4
  autocmd bufwritepre *.vim normal mmgg=G`mzz
  autocmd filetype markdown setlocal wrap linebreak
  autocmd filetype markdown setlocal spell
  autocmd VimEnter * if argc() == 0 | Vifm | endif
  autocmd filetype html silent! imap <expr><silent><buffer><c-l> emmet#expandAbbrIntelligent("\<c-space>")
  autocmd filetype css,scss let b:prettier_exec_cmd = "prettier-stylelint"
  autocmd bufwrite *.js,*.ts,*.css,*.scss,*.json,*.md,*.html,*jsx,*.tsx Prettier
augroup end

" Enter Vim On The Same Line
if has("autocmd")
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")| exe "normal! g'\"" | endif
endif

