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
require'nvim_lsp'.jsonls.setup {} -- LspInstall jsonls
require'nvim-web-devicons'.setup()

require'nvim-treesitter.configs'.setup {
    ensure_installed = "all" -- one of "all", "language", or a list of languages
}
