-- basic varibles
local vim = vim
local api = vim.api
local fn = vim.fn
local filetype = api.nvim_eval("&filetype")
-- local completion = require('completion')
local nvim_lsp = require'nvim_lsp'
local configs = require'nvim_lsp/configs'

require 'colorizer'.setup()

-- Lsp
require'nvim_lsp'.tsserver.setup{ on_attach=require'completion'.on_attach }
require'nvim_lsp'.tsserver.setup{ on_attach=require'completion'.on_attach } -- you need a package.json or tsconfig.json
require'nvim_lsp'.vimls.setup{ on_attach=require'completion'.on_attach }
require'nvim_lsp'.pyls.setup { on_attach=require'completion'.on_attach } -- pip install python-language-server
require'nvim_lsp'.sumneko_lua.setup { on_attach=require'completion'.on_attach } -- LspInstall sumneko_lua
require'nvim_lsp'.bashls.setup { on_attach=require'completion'.on_attach } -- LspInstall bashls
require'nvim_lsp'.clangd.setup { on_attach=require'completion'.on_attach } -- ???
require'nvim_lsp'.cssls.setup { on_attach=require'completion'.on_attach } -- LspInstall cssls
require'nvim_lsp'.html.setup { on_attach=require'completion'.on_attach } -- LspInstall html
require'nvim_lsp'.rls.setup { on_attach=require'completion'.on_attach } -- ???

require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    indent = {
      enable = true
    },
    highlight = {
      enable = true,
      disable = {},
    },
  }




