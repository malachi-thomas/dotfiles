call plug#begin('~/.config/nvim/plugged')
" Programming
Plug 'machakann/vim-sandwich'
Plug 'wincent/scalpel'
Plug 'neovim/nvim-lsp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'mattn/emmet-vim'
Plug 'liuchengxu/vista.vim'

"Not Programming
Plug 'vimwiki/vimwiki'
Plug 'vifm/vifm.vim'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-eunuch'


" Theam
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

