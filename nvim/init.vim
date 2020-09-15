
"==================================================================================================
" Source Files
source ~/dotfiles/nvim/mappings.vim
source ~/dotfiles/nvim/plugins.vim
source ~/dotfiles/nvim/plugin-configs.vim
lua require('init')
lua require('nvim-snippets')
lua require('test')
nnoremap <c-x> :lua require('test').hello_world()<cr>

"==============================================================================
" Theme

colorscheme gruvbox
set termguicolors
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
set list
set listchars=tab:→\ ,eol:↲,trail:•


nnoremap <space>p :lua require'telescope.builtin'.git_files{}<CR>

nnoremap <space>f :lua require'telescope.builtin'.find_files{}<CR>

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


