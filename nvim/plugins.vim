
if has('nvim')
  if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    so $MYVIMRC
  endif
endif

"=================================================================================================
" Plugins

call plug#begin('~/.config/nvim/plugged')
if has('nvim-0.5')
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  " Plug 'steelsojka/completion-buffers'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lua/telescope.nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
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
Plug 'metakirby5/codi.vim'
Plug 'bkad/CamelCaseMotion'

" testing
Plug 'tpope/vim-fugitive'
Plug 'euclidianAce/BetterLua.vim'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-repeat'
Plug 'mboughaba/i3config.vim'
Plug 'Yggdroot/indentLine'
Plug 'rust-lang/rust.vim'


" ui plugins
Plug 'vimwiki/vimwiki'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
Plug 'frazrepo/vim-rainbow'
Plug 'neoclide/jsonc.vim'
Plug 'itchyny/lightline.vim'

call plug#end()

"==================================================================================================
