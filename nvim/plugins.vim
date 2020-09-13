call plug#begin('~/.config/nvim/plugged')
" lua
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'steelsojka/completion-buffers'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'norcalli/snippets.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" Programming
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'dense-analysis/ale'
Plug 'vifm/vifm.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
<<<<<<< HEAD
<<<<<<< master
"Plug 'SirVer/ultisnips'

" Testing
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'nvim-lua/diagnostic-nvim'
=======
Plug 'andrejlevkovitch/vim-lua-format' " lua formatter

" Testing
Plug 'sheerun/vim-polyglot'
>>>>>>> local
=======
Plug 'andrejlevkovitch/vim-lua-format' " lua formatter

" Testing
Plug 'sheerun/vim-polyglot'
>>>>>>> testing-stuff

" Vim Traning
Plug 'ThePrimeagen/vim-be-good'

" Notetaking
Plug 'vimwiki/vimwiki'
" Theam
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
<<<<<<< HEAD
<<<<<<< master
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'
=======
>>>>>>> local
Plug 'mboughaba/i3config.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'shmargum/vim-sass-colors'
<<<<<<< master

=======
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'ryanoasis/vim-devicons'
>>>>>>> local
=======
Plug 'mboughaba/i3config.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'shmargum/vim-sass-colors'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'ryanoasis/vim-devicons'
>>>>>>> testing-stuff
call plug#end()

