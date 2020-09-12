call plug#begin('~/.config/nvim/plugged')
" nvim-lsp
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'steelsojka/completion-buffers'

" Programming
Plug 'wincent/scalpel'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'vifm/vifm.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
"Plug 'SirVer/ultisnips'

" Testing
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'nvim-lua/diagnostic-nvim'

" Vim Traning
Plug 'tjdevries/train.nvim'
Plug 'ThePrimeagen/vim-be-good'

" Notetaking
Plug 'vimwiki/vimwiki'

" Theam
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'
Plug 'mboughaba/i3config.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'machakann/vim-highlightedyank'
Plug 'shmargum/vim-sass-colors'

call plug#end()
autocmd VimEnter *  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))|   PlugInstall --sync | q| endif

