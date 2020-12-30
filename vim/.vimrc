
hi! Character guibg=#928374
set background=dark

syntax enable
filetype plugin indent on
set listchars=tab:→\ ,eol:↲,trail:•,precedes:←,extends:→,nbsp:·
set wildmode=longest,full
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
set completeopt=menuone,noinsert
set noshowmode
set hlsearch
set nocompatible
set timeoutlen=500
set noshowmode
set noruler
set laststatus=2
set showcmd
set timeoutlen=1000 " how long vim waits for next key press
set rtp+=~/.config/nvim/autoload/functions.vim
set pumheight=10 " completion menu hight
set pumwidth=30 " completion munu width

" ===mappings===
" <M-up>
nnoremap [1;3A <c-w>k
" <M-down>
nnoremap [1;3B <c-w>j
" <M-left>
nnoremap [1;3D <c-w>h
" <M-right>
nnoremap [1;3C <c-w>l

inoremap <c-h> <c-w>
cnoremap <c-h> <c-w>
nnoremap Q <nop>
vnoremap p "_dP

" remappings
" <up>
nnoremap <silent> <esc>OA <up>
inoremap <silent> <esc>OA <up>
" <down>
nnoremap <silent> <esc>OB <down>
inoremap <silent> <esc>OB <down>
" <left>
nnoremap <silent> <esc>OD <left>
inoremap <silent> <esc>OD <left>
" <right>
nnoremap <silent> <esc>OC <right>
inoremap <silent> <esc>OC <right>
" <home>
nnoremap <silent> <esc>OH ^
inoremap <silent> <esc>OH <c-o>^
" <End>
inoremap <silent> <esc>OF <c-o>$
nnoremap <silent> <esc>OF $

imap <silent><expr><tab>
      \ pumvisible() ? "\<cr>" :
      \ Check_back_space() ? "\<tab>" :
      \ "<c-n>"
inoremap <silent><expr><up>
      \ pumvisible() ? "\<c-p>" :
      \ "\<up>"
inoremap <silent><expr><down>
      \ pumvisible() ? "\<c-n>" :
      \ "\<down>"
inoremap <silent><expr><right>
      \ pumvisible() ? "\<c-g>u<right>" :
      \ "\<right>"
inoremap <silent><expr><left>
      \ pumvisible() ? "\<c-g>u<left>" :
      \ "\<left>"

autocmd CursorMoved,BufWrite * normal zz



function! Check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

