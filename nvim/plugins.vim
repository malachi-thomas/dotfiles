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
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lua/telescope.nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
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
Plug 'mattn/emmet-vim'
Plug 'rhysd/clever-f.vim'
" Plug 'wincent/scalpel'
Plug 'machakann/vim-sandwich'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'metakirby5/codi.vim'
Plug 'bkad/CamelCaseMotion'

" testing
Plug 'tpope/vim-fugitive'
Plug 'euclidianAce/BetterLua.vim'
Plug 'wellle/targets.vim'
Plug 'nathanaelkane/vim-indent-guides'


" ui plugins
Plug 'vimwiki/vimwiki'
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
Plug 'frazrepo/vim-rainbow'
Plug 'neoclide/jsonc.vim'
Plug 'itchyny/lightline.vim'

call plug#end()

"==================================================================================================
