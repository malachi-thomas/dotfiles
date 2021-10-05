----- Package Manager -----

require("packer").startup(
  function()
    use"wbthomason/packer.nvim"
    use "hrsh7th/nvim-compe"
    use "neovim/nvim-lspconfig"
    use "kyazdani42/nvim-web-devicons"
    use "romgrk/barbar.nvim"
    use "nvim-treesitter/nvim-treesitter"
    use "dense-analysis/ale"
    -- use "mhartington/formatter.nvim"
    -- use "mfussenegger/nvim-lint"
    use "tpope/vim-commentary"
    -- use "airblade/vim-rooter"
    use "junegunn/fzf"
    use "junegunn/fzf.vim"
    use "mattn/emmet-vim"
    use "rhysd/clever-f.vim"
    use "machakann/vim-sandwich"
    use "hrsh7th/vim-vsnip"
    use "hrsh7th/vim-vsnip-integ"
    use "voldikss/vim-floaterm"
    use "tpope/vim-fugitive"
    use "tpope/vim-repeat"
    use "kyazdani42/nvim-tree.lua"
    use "tpope/vim-eunuch"
--    use "folke/which-key.nvim"
    use 'brooth/far.vim'

    -- ui plugins
    use "morhetz/gruvbox"
    use "cespare/vim-toml"
    use "sheerun/vim-polyglot"
    use "ryanoasis/vim-devicons"
    use "neoclide/jsonc.vim"
    use "vim-airline/vim-airline"
    use "glepnir/indent-guides.nvim"
  end
)

----- Plugin Config -----

-- indent-guides
require "indent_guides".setup {
  indent_levels = 30,
  indent_guide_size = 4,
  indent_start_level = 1,
  indent_space_guides = true,
  indent_tab_guides = true,
  exclude_filetypes = {"help", "dashboard", "dashpreview", "NvimTree", "vista", "sagahover"},
  even_colors = {fg = "#3C3836", bg = "#3C3836"},
  odd_colors = {fg = "#504945", bg = "#504945"}
}

-- lspconfig
-- require('lspconfig').pyls.setup{};
require('lspconfig').tsserver.setup {}
require('lspconfig').vimls.setup {}
require('lspconfig').ccls.setup {}
require('lspconfig').rust_analyzer.setup {}
require('lspconfig').bashls.setup{}
require('lspconfig').clangd.setup {}
require('lspconfig').gopls.setup{}
require('lspconfig').html.setup {}
require('lspconfig').jsonls.setup {}
require('lspconfig').hls.setup {}
require('lspconfig').sourcekit.setup {}
require('lspconfig').sumneko_lua.setup {
  cmd = {
    vim.fn.expand("~/.config/nvim/lua-language-server/bin/macOS/lua-language-server"),
    "-E",
    vim.fn.expand("~/.config/nvim/lua-language-server/main.lua")
  },
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
        path = vim.split(package.path, ";")
      },
      diagnostics = {
        globals = {"vim", 'use'}
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME")] = true,
          [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
          [vim.fn.expand("~/.config/nvim/lua-language-server/meta/3rd/love2d/library")] = true
        },
        checkThirdParty = false
      }
    }
  }
}

-- nvim-treesitter
require "nvim-treesitter.configs".setup {
  ensure_installed = "maintained",
  indent = {
    enable = false
  },
  highlight = {
    enable = true
  }
}

-- ale
vim.g.ale_linters = {
    javascript = "eslint",
    typescript = "eslint",
    json = "fixjson",
    jsonc = "fixjson",
    scss = "stylelint",
    css = "stylelint",
    python = "autopep8",
    rust = "carge",
    swift = {"swiftlint", "sourcekit-lsp"},
    lua = "luacheck",
}

vim.g.ale_fixers = {
  json = "fixjson",
  jsonc = "fixjson"
}

vim.g.ale_fix_on_save = 1
vim.g.ale_set_highlights = 1
vim.g.ale_linters_explicit = 1
vim.g.ale_set_signs = 1
vim.g.ale_sign_column_always = 1
vim.g.ale_lint_on_enter = 1
vim.g.ale_lint_on_save = 1
vim.g.ale_lint_on_text_change = 1
vim.g.ale_sign_error = "✗"
vim.g.ale_sign_warning = " "
vim.g.ale_virtualtext_cursor = 1
-- vim.g.ale_virtualtext_cursor = 1
-- vim.g.ale_hover_cursor = 1

-- fzf
vim.g.fzf_preview_window = {}

-- vsnip
vim.g.vsnip_snippet_dir = vim.fn.expand("~/dotfiles/snippets")

-- rooter
-- vim.g.rooter_targets = "*"
-- vim.g.rooter_silent_chdir = 1
-- vim.g.rooter_patterns = {"=zsh", "=nvim", "=notes", "Cargo.toml"}

-- clever-f
vim.g.clever_f_across_no_line = 1
vim.g.clever_f_smart_case = 1
vim.cmd([[
  nmap ; <Plug>(clever-f-repeat-forward)
  nmap , <Plug>(clever-f-repeat-back)
]])

-- airline
vim.g.airline_section_x = ""
vim.g.airline_section_y = ""
vim.g.airline_section_z = ""
vim.g.airline_section_error = ""
vim.g.airline_section_warning = ""

-- compe
require "compe".setup {
  enabled = true,
  autocomplete = true,
  debug = false,
  min_length = 1,
  preselect = "enable",
  throttle_time = 80,
  source_timeout = 200,
  resolve_timeout = 800,
  incomplete_delay = 400,
  max_abbr_width = 100,
  max_kind_width = 100,
  max_menu_width = 100,
  documentation = {
    border = {"", "", "", " ", "", "", "", " "}, -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1
  },
  source = {
    path = true,
    buffer = true,
    calc = true,
    nvim_lsp = true,
    nvim_lua = true,
    vsnip = true,
    ultisnips = true,
    luasnip = true
  }
}
-- which-key
--
--vim.opt.timeoutlen = 300
--require("which-key").setup {}

-- nvim-tree.lua
local tree_cb = require "nvim-tree.config".nvim_tree_callback
vim.g.nvim_tree_bindings = {
  {key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit")},
  {key = {"<2-RightMouse>", "<C-]>"}, cb = tree_cb("cd")},
  {key = "<C-v>", cb = tree_cb("vsplit")},
  {key = "<C-x>", cb = tree_cb("split")},
  {key = "<C-t>", cb = tree_cb("tabnew")},
  {key = "<", cb = tree_cb("prev_sibling")},
  {key = ">", cb = tree_cb("next_sibling")},
  {key = "P", cb = tree_cb("parent_node")},
  {key = "<BS>", cb = tree_cb("close_node")},
  {key = "<S-CR>", cb = tree_cb("close_node")},
  {key = "<Tab>", cb = tree_cb("preview")},
  {key = "K", cb = tree_cb("first_sibling")},
  {key = "J", cb = tree_cb("last_sibling")},
  {key = "I", cb = tree_cb("toggle_ignored")},
  {key = "H", cb = tree_cb("toggle_dotfiles")},
  {key = "R", cb = tree_cb("refresh")},
  {key = "a", cb = tree_cb("create")},
  {key = "d", cb = tree_cb("remove")},
  {key = "r", cb = tree_cb("rename")},
  {key = "<C-r>", cb = tree_cb("full_rename")},
  {key = "x", cb = tree_cb("cut")},
  {key = "c", cb = tree_cb("copy")},
  {key = "p", cb = tree_cb("paste")},
  {key = "y", cb = tree_cb("copy_name")},
  {key = "Y", cb = tree_cb("copy_path")},
  {key = "gy", cb = tree_cb("copy_absolute_path")},
  {key = "[c", cb = tree_cb("prev_git_item")},
  {key = "]c", cb = tree_cb("next_git_item")},
  {key = "-", cb = tree_cb("dir_up")},
  {key = "s", cb = tree_cb("system_open")},
  {key = "q", cb = tree_cb("close")},
  {key = "g?", cb = tree_cb("toggle_help")}
}

-- disable inline lsp stuff
vim.lsp.handlers["textDocument/publishDiagnostics"] =
  vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = true,
    signs = false,
    update_in_insert = true
  }
)
