-- basic varibles

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

local actions = require('telescope.actions')

-- If you want your function to run after another action you should define it as follows
local test_action = actions._transform_action(function(prompt_bufnr)
  print("This function ran after another action. Prompt_bufnr: " .. prompt_bufnr)
  -- Enter your function logic here. You can take inspiration from lua/telescope/actions.lua
end)

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
  }
}
-- require'telescope.builtin'.find_files{ find_command = { "fd", "-tf", "--hidden" }}

