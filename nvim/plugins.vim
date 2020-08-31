call plug#begin('~/.config/nvim/plugged')
" Programming
Plug 'machakann/vim-sandwich'
Plug 'wincent/scalpel'
Plug 'dense-analysis/ale'
Plug 'neovim/nvim-lsp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

"Not Programming
Plug 'vimwiki/vimwiki'

" Theam
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ap/vim-css-color'
Plug 'mboughaba/i3config.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'machakann/vim-highlightedyank'
Plug 'shmargum/vim-sass-colors'

call plug#end()
autocmd VimEnter *  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))|   PlugInstall --sync | q| endif

