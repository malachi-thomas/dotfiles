if has('packages')
  if has('nvim-0.5')
    " if filereadable('~/.config/nvim/pack/plugins/opt/nvim-lspconfig')
      packadd! nvim-lspconfig
    " else
      " !git clone https://github.com/neovim/nvim-lspconfig ~/.config/nvim/pack/plugins/opt/nvim-lspconfig
    " endif
    packadd! completion-nvim
    packadd! completion-buffers
    packadd! diagnostic-nvim
    packadd! nvim-web-devicons
    packadd! barbar.nvim
    packadd! popup.nvim
    packadd! plenary.nvim
    packadd! telescope.nvim
    packadd! nvim-treesitter
  else
    packadd! vim-highlightedyank
    packadd! coc.nvim
  endif
  packadd! vim-startify
  packadd! ale
  packadd! vim-commentary
  packadd! vim-rooter
  packadd! fzf
  packadd! fzf.vim
  packadd! vim-gutentags
  packadd! emmet-vim
  packadd! clever-f.vim
  packadd! vim-sandwich
  packadd! vim-vsnip
  packadd! vim-vsnip-integ
  packadd! codi.vim
  " packadd! CamelCaseMotion
  " testing
  packadd! vim-fugitive
  packadd! BetterLua.vim
  packadd! targets.vim
  " ui plugins
  packadd! vimwiki
  packadd! vim-polyglot
  packadd! vim-devicons
  packadd! gruvbox
  packadd! vim-rainbow
  packadd! jsonc.vim
  packadd! lightline.vim
  packadd! vim-indent-guides
endif
