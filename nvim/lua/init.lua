local nvim_lsp = require'lspconfig'
local config = require'lspconfig'.config

-- sudo npm i -g typescript typescript-language-server clangd vim-language-server vscode-css-languageserver-bin vscode-html-languageserver-bin vscode-json-languageserver-bin
-- LspInstall rust_analyzer
-- ghcup install hls

nvim_lsp.tsserver.setup {}
nvim_lsp.vimls.setup {}
nvim_lsp.pyls.setup{}
nvim_lsp.sumneko_lua.setup{}
nvim_lsp.clangd.setup {}
nvim_lsp.rust_analyzer.setup{}
nvim_lsp.cssls.setup{}
nvim_lsp.html.setup{}
nvim_lsp.jsonls.setup{}
nvim_lsp.hls.setup{}

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  indent = {
    enable = false,
  },
  highlight = {
    enable = true,
  }
}

require'indent_guides'.setup {
  indent_levels = 30;
  indent_guide_size = 4;
  indent_start_level = 1;
  indent_space_guides = true;
  indent_tab_guides = true;
  exclude_filetypes = {'help','dashboard','dashpreview','NvimTree','vista','sagahover'};
  even_colors = { fg ='#3C3836',bg='#3C3836' };
  odd_colors = {fg='#504945',bg='#504945'};
}

-- require"lualine".setup{
--   options = {
--     theme = 'gruvbox',
--     section_separators = '',
--     component_separators = '',
--     icons_enabled = true,
--   },
--   sections = {
--     lualine_a = { {'mode', upper = true} },
--     lualine_b = { {'branch', icon = ''} },
--     lualine_c = { {'filename', file_status = true} },
--     lualine_x = { 'filetype' },
--     lualine_y = { '' }
--   },
--   extensions = { 'fzf' },
-- }



-- disable inline stuff
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = false,
    signs = false,
    update_in_insert = false,
  })
