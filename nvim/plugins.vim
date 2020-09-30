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

  " Vim Traning
  Plug 'ThePrimeagen/vim-be-good'
endif

" Programming
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-commentary'
" Plug 'mattn/emmet-vim'
Plug 'voldikss/vim-floaterm'
Plug 'machakann/vim-sandwich'
Plug 'rhysd/clever-f.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'metakirby5/codi.vim'

" Testing
Plug 'justinmk/vim-dirvish'
Plug 'tjdevries/lsp_extensions.nvim'
Plug 'mileszs/ack.vim'
Plug 'liuchengxu/vista.vim'


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
