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
  indent_guide_size = 2;
  indent_start_level = 1;
  indent_space_guides = true;
  indent_tab_guides = true;
  exclude_filetypes = {'help','dashboard','dashpreview','NvimTree','vista','sagahover'};
  even_colors = { fg ='#3C3836',bg='#3C3836' };
  odd_colors = {fg='#504945',bg='#504945'};
}



require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = false;

  source = {
    path = true;
    buffer = true;
    calc = true;
    vsnip = true;
    nvim_lsp = true;
    nvim_lua = true;
    spell = true;
    tags = true;
    snippets_nvim = true;
    treesitter = true;
  };
}

-- disable inline stuff
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = false,
    signs = false,
    update_in_insert = false,
  })
