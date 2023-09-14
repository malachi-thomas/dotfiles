require('packer').startup(function()
  -- Package manager
  use { 'wbthomason/packer.nvim' }

  -- Completion Engin
  use { 'neovim/nvim-lspconfig', requires = { { 'williamboman/nvim-lsp-installer' } } }
  use { 'hrsh7th/nvim-cmp', requires = { { 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer',  'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline', 'saadparwaiz1/cmp_luasnip' } } }
  use { 'L3MON4D3/LuaSnip' }
  -- use { "mattn/emmet-vim" }
  use { "aca/emmet-ls" }

  -- Building Block Plugins
  use { "MunifTanjim/nui.nvim" }

  -- Navigation/Movement Plugins
  use { 'rhysd/clever-f.vim' }
  use { "junegunn/fzf.vim", requires = { use "junegunn/fzf" } }
  use { 'kylechui/nvim-surround', config = function() require('nvim-surround').setup{} end}
  -- use { 'mg979/vim-visual-multi' }
  use { 'stevearc/oil.nvim' }
  use { 'tpope/vim-commentary' }
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
  use { 'nvim-treesitter/nvim-treesitter', run = { ":TSUpdate" }}

  -- Visual Plugins
  use { 'morhetz/gruvbox' }
  use { 'lukas-reineke/indent-blankline.nvim' }
  use { 'voldikss/vim-floaterm' }
  use { 'nvim-lualine/lualine.nvim' }
  use { 'nvim-lua/popup.nvim' }

  -- Not Using/New
  use { 'Wansmer/treesj', config = function() require('treesj').setup({})end}
  -- use { 'terrortylor/nvim-comment' }
  -- use { 'nvim-tree/nvim-tree.lua' }
  use { 'otavioschwanck/cool-substitute.nvim'}
  -- use {'mc.nvim'}
  -- use { 'YacineDo/mc.nvim' }
  -- use { 'smoka7/multicursors.nvim', requires = { 'smoka7/hydra.nvim' } }
  use { 'vimwiki/vimwiki' }


end)
-- vim.g.vimwiki_table_mappings=0
-- vim.g.vimwiki_all_maps = 0
-- vim.g.vimwiki_key_mappings = { 'table_mappings': 0 }
vim.cmd([[let g:vimwiki_key_mappings = { 'all_maps': 0, }]])

-- vim.g.vimwiki_key_mappings = { 'all_maps': 0, }
require("oil").setup{
  keymaps = {
    ["<CR>"] = "actions.select",
    ["<C-c>"] = "actions.close",
    ["<C-l>"] = "actions.refresh",
    ["-"] = "actions.parent",
  },
  use_default_keymaps = false,
}
-- require('mc').setup{}
require'cool-substitute'.setup({
  setup_keybindings = true,

  mappings = {
    start = 'gm', -- Mark word / region
    start_and_edit = 'gM', -- Mark word / region and also edit
    start_and_edit_word = 'g!M', -- Mark word / region and also edit.  Edit only full word.
    start_word = 'g!m', -- Mark word / region. Edit only full word
    apply_substitute_and_next = 'M', -- Start substitution / Go to next substitution
    apply_substitute_and_prev = '<C-b>', -- same as M but backwards
    apply_substitute_all = 'ga', -- Substitute all
    force_terminate_substitute = 'g!!', -- Terminate macro (if some bug happens)
    terminate_substitute = '<esc>', -- Terminate macro
    skip_substitute = 'n', -- Skip this occurrence
    goto_next = '<C-j>', -- Go to next occurence

  },
})

require('lualine').setup{ tabline = { lualine_a = { 'buffers' } } }
require('luasnip')
require("luasnip.loaders.from_snipmate").lazy_load( { paths = { '~/.config/nvim/lua/snippets' } })
require('luasnip').config.set_config({
  updateevent = 'TextChanged,TextChangedI',
  enable_autosnippets = true,
})

require('indent_blankline').setup {
  show_end_of_line = true,
  space_char_blankline = '.',
  show_current_context = true,
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true


require('nvim-lsp-installer').setup {automatic_installation = true}
require('lspconfig').tsserver.setup {}
require('lspconfig').vimls.setup {}
require('lspconfig').rust_analyzer.setup {}
require('lspconfig').bashls.setup{}
require('lspconfig').gopls.setup {}
require('lspconfig').emmet_ls.setup{}
require('lspconfig').cssls.setup{
  capabilities = capabilities,
}
-- require('lspconfig').html.setup{}
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}
require('lspconfig').jsonls.setup {}
require('lspconfig').sourcekit.setup {}
require('lspconfig').lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' ,'use', 'luasnip' },
        disable = {'lowercase-global'}

      },
    },
  },
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = { '*' },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- disable inline lsp stuff
vim.lsp.handlers['textDocument/publishDiagnostics'] =
vim.lsp.with(
vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  virtual_text = true,
  signs = false,
  update_in_insert = true
}
)

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules" 
    }
  }
}

