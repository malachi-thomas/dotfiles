-- basic varibles
local vim = vim
local api = vim.api
local fn = vim.fn
local filetype = api.nvim_eval("&filetype")
local completion = require('completion')
-- Lsp
require'nvim_lsp'.pyls.setup {} -- pip install python-language-server
require'nvim_lsp'.tsserver.setup {} -- LspInstall tsserver
require'nvim_lsp'.vimls.setup {} -- LspInstall vimls
require'nvim_lsp'.sumneko_lua.setup {} -- LspInstall sumneko_lua
require'nvim_lsp'.bashls.setup {} -- LspInstall bashls
require'nvim_lsp'.clangd.setup {} -- ???
require'nvim_lsp'.cssls.setup {} -- LspInstall cssls
require'nvim_lsp'.html.setup {} -- LspInstall html
require'nvim_lsp'.rls.setup {} -- ???
-- reauire'nvim_lsp'.jsonls.setup {} -- LspInstall jsonls

-- vim.lsp.callbacks['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
-- vim.lsp.callbacks['textDocument/references'] = require'lsputil.locations'.references_handler
-- vim.lsp.callbacks['textDocument/definition'] = require'lsputil.locations'.definition_handler
-- vim.lsp.callbacks['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
-- vim.lsp.callbacks['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
-- vim.lsp.callbacks['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
-- vim.lsp.callbacks['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
