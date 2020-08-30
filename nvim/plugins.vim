call plug#begin('~/.config/nvim/plugged')
" vimscript
Plug 'NLKNguyen/papercolor-theme'
Plug 'machakann/vim-sandwich'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'
Plug 'wincent/scalpel'
" needs python
" needs nodejs

Plug 'mboughaba/i3config.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'dense-analysis/ale'
Plug 'shmargum/vim-sass-colors'
Plug 'neovim/nvim-lsp'
Plug 'machakann/vim-highlightedyank'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'airblade/vim-rooter'
Plug 'vimwiki/vimwiki'
" Test
call plug#end()
autocmd VimEnter *  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))|   PlugInstall --sync | q| endif

