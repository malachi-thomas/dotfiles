" Plugins

call plug#begin('~/.config/nvim/plugged')
if has('nvim-0.5')
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'steelsojka/completion-buffers'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'
  " Plug 'nvim-treesitter/nvim-treesitter'
else
  Plug 'machakann/vim-highlightedyank'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'sheerun/vim-polyglot'
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
Plug 'machakann/vim-sandwich'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-fugitive'

" testing

Plug 'tpope/vim-repeat'
Plug 'cespare/vim-toml'



" ui plugins
Plug 'vimwiki/vimwiki'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'

Plug 'luochen1990/rainbow'
Plug 'neoclide/jsonc.vim'
Plug 'itchyny/lightline.vim'
" Plug 'Yggdroot/indentLine'
Plug 'mboughaba/i3config.vim'

call plug#end()

"==================================================================================================
