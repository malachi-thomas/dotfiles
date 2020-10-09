"
"=================================================================================================
" Plugins

call plug#begin('~/.config/nvim/plugged')

if !empty(glob("/mnt/Users")) && has('nvim')
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'steelsojka/completion-buffers'
  Plug 'nvim-lua/diagnostic-nvim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'kristijanhusak/completion-tags'
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
Plug 'ludovicchabant/vim-gutentags' " updating tags file
Plug 'justinmk/vim-dirvish' " better file manager
Plug 'mattn/emmet-vim'

" Testing

" Notetaking
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Theam
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'mboughaba/i3config.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
call plug#end()

"==================================================================================================
"hat
