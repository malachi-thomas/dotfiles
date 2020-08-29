call plug#begin('~/.config/nvim/plugged')
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'
Plug 'mboughaba/i3config.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'wincent/scalpel'
Plug 'dense-analysis/ale'
Plug 'shmargum/vim-sass-colors'
Plug 'neovim/nvim-lsp'
Plug 'machakann/vim-highlightedyank'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-startify'
Plug 'shime/vim-livedown'
Plug 'airblade/vim-rooter'
Plug 'vimwiki/vimwiki'
call plug#end()
autocmd VimEnter *  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))|   PlugInstall --sync | q| endif

