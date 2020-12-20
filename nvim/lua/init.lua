
local nvim_lsp = require'lspconfig'

nvim_lsp.tsserver.setup {} -- you need a package.json or tsconfig.json
nvim_lsp.vimls.setup {}
nvim_lsp.pyls.setup{} -- use pip
nvim_lsp.sumneko_lua.setup {}
nvim_lsp.bashls.setup {}
nvim_lsp.clangd.setup {}
nvim_lsp.cssls.setup {}
nvim_lsp.html.setup {}
nvim_lsp.rust_analyzer.setup{} -- install rust_analyzer


local actions = require('telescope.actions')
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
  }
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  indent = {
    enable = true,
    disable = {'python'},
  },
  highlight = {
    enable = true,
    disable = {'python'},
  },
}

vim.lsp.callbacks["textDocument/publishDiagnostics"] = function() end

