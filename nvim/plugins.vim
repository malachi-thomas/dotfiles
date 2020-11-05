"
"=================================================================================================
" Plugins

call plug#begin('~/.config/nvim/plugged')
if has('nvim-0.5')
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'steelsojka/completion-buffers'
  Plug 'nvim-lua/diagnostic-nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'
else
  Plug 'machakann/vim-highlightedyank'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

Plug 'mhinz/vim-startify'
Plug 'dense-analysis/ale' 
Plug 'tpope/vim-commentary' 
Plug 'airblade/vim-rooter' 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags' 
Plug 'justinmk/vim-dirvish' 
Plug 'mattn/emmet-vim'
Plug 'rhysd/clever-f.vim'
Plug 'wincent/scalpel'
" testing

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'machakann/vim-sandwich'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-fugitive'

Plug 'vimwiki/vimwiki'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'joshdick/onedark.vim' 
Plug 'vim-airline/vim-airline' 
Plug 'morhetz/gruvbox'

call plug#end()

"==================================================================================================
