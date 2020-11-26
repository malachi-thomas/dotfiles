packadd minpac

call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})

if has('nvim-0.5')
  packadd! nvim-lspconfig
  packadd! telescope.nvim
  packadd! diagnostic-nvim
  packadd! completion-nvim
  packadd! plenary.nvim
  packadd! completion-buffers
  packadd! nvim-web-devicons
  packadd! barbar.nvim
  packadd! popup.nvim
  packadd! nvim-treesitter
else
  call minpac#add('machakann/vim-highlightedyank', {'type': 'opt'})
  call minpac#add('neoclide/coc.nvim', {'type': 'opt'})
endif

call minpac#add('mhinz/vim-startify', {'type': 'opt'})
call minpac#add('dense-analysis/ale', {'type': 'opt'})
call minpac#add('tpope/vim-commentary', {'type': 'opt'})
call minpac#add('airblade/vim-rooter', {'type': 'opt'})
call minpac#add('junegunn/fzf', {'type': 'opt'})
call minpac#add('junegunn/fzf.vim', {'type': 'opt'})
call minpac#add('ludovicchabant/vim-gutentags', {'type': 'opt'})
call minpac#add('mattn/emmet-vim', {'type': 'opt'})
call minpac#add('rhysd/clever-f.vim', {'type': 'opt'})
call minpac#add('machakann/vim-sandwich', {'type': 'opt'})
call minpac#add('hrsh7th/vim-vsnip', {'type': 'opt'})
call minpac#add('hrsh7th/vim-vsnip-integ', {'type': 'opt'})
call minpac#add('metakirby5/codi.vim', {'type': 'opt'})
call minpac#add('bkad/CamelCaseMotion', {'type': 'opt'})

call minpac#add('tpope/vim-fugitive', {'type': 'opt'})
call minpac#add('euclidianAce/BetterLua.vim', {'type': 'opt'})
call minpac#add('wellle/targets.vim', {'type': 'opt'})
call minpac#add('nathanaelkane/vim-indent-guides', {'type': 'opt'})


call minpac#add('vimwiki/vimwiki', {'type': 'opt'})
call minpac#add('sheerun/vim-polyglot', {'type': 'opt'})
call minpac#add('ryanoasis/vim-devicons', {'type': 'opt'})
call minpac#add('morhetz/gruvbox', {'type': 'opt'})
call minpac#add('frazrepo/vim-rainbow', {'type': 'opt'})
call minpac#add('neoclide/jsonc.vim', {'type': 'opt'})
call minpac#add('itchyny/lightline.vim', {'type': 'opt'})

command! PackUpdate call minpac#update()
command! PackClean  call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()
