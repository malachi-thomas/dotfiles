" =================================================================================================
" Plugins

call plug#begin('~/.config/nvim/plugged')

if has('nvim')
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'steelsojka/completion-buffers'
  Plug 'nvim-lua/diagnostic-nvim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'norcalli/nvim_utils'
  Plug 'kristijanhusak/completion-tags'

  " Vim Traning
  Plug 'ThePrimeagen/vim-be-good'
endif

" Programming
Plug 'dense-analysis/ale' " linting and fixing
Plug 'tpope/vim-fugitive' " git intergration
Plug 'tpope/vim-eunuch' " bash commands
Plug 'SirVer/ultisnips' " snippets
Plug 'tpope/vim-commentary' " for esey commenting
Plug 'airblade/vim-rooter' " set the root directory
Plug 'machakann/vim-sandwich' " for sorrounding arrounding things
Plug 'rhysd/clever-f.vim' " better f key
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " FZF
Plug 'junegunn/fzf.vim' " FZF
Plug 'metakirby5/codi.vim' " inline code meseges

" Testing
Plug 'justinmk/vim-dirvish' " better file manager
Plug 'mileszs/ack.vim'
Plug 'liuchengxu/vista.vim' " tag viewing
Plug 'craigemery/vim-autotag' " for updating tags file

" Notetaking
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Theam
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'mboughaba/i3config.vim'
Plug 'machakann/vim-highlightedyank'
" Plug 'shmargum/vim-sass-colors' don't use this plugin it dosnt work with fzf
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'Rigellute/shades-of-purple.vim'
call plug#end()

"=================================================================================================
"hat
