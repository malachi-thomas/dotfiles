----- Package Manager -----

require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'morhetz/gruvbox'
  use 'hrsh7th/nvim-compe'
  -- use 'nvim-lua/completion-nvim'
  -- use 'steelsojka/completion-buffers'
  use 'neovim/nvim-lspconfig'
  use 'kyazdani42/nvim-web-devicons'
  use 'romgrk/barbar.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'dense-analysis/ale'
  use 'tpope/vim-commentary'
  use 'airblade/vim-rooter'
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use 'mattn/emmet-vim'
  use 'rhysd/clever-f.vim'
  use 'machakann/vim-sandwich'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'voldikss/vim-floaterm'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-repeat'
  use 'kyazdani42/nvim-tree.lua'
  -- ui plugins
  use 'cespare/vim-toml'
  use 'sheerun/vim-polyglot'
  use 'ryanoasis/vim-devicons'
  use 'neoclide/jsonc.vim'
  use 'vim-airline/vim-airline'
  use 'glepnir/indent-guides.nvim'
end)

----- Plugin Config -----

-- indent-guides
require'indent_guides'.setup {
  indent_levels = 30;
  indent_guide_size = 4;
  indent_start_level = 1;
  indent_space_guides = true;
  indent_tab_guides = true;
  exclude_filetypes = {'help','dashboard','dashpreview','NvimTree','vista','sagahover'};
  even_colors = { fg ='#3C3836',bg='#3C3836' };
  odd_colors = { fg='#504945',bg='#504945' };
}

-- lspconfig
-- require('lspconfig').pyls.setup{};
require('lspconfig').tsserver.setup {}
require('lspconfig').vimls.setup {};
require('lspconfig').clangd.setup {};
require('lspconfig').rust_analyzer.setup{};
require('lspconfig').cssls.setup{};
require('lspconfig').html.setup{};
require('lspconfig').jsonls.setup{};
require('lspconfig').hls.setup{};
require('lspconfig').sourcekit.setup{};
require('lspconfig').sumneko_lua.setup{
  cmd = {vim.fn.expand('~/.config/nvim/lua-language-server/bin/macOS/lua-language-server'), '-E', vim.fn.expand('~/.config/nvim/lua-language-server/main.lua')},
   settings = {
     Lua = {
       runtime = {
         version = 'LuaJIT',
         diagnostics = {
           globals = {'vim'}
         },
         workspace = {
           library = {[vim.fn.expand('$VIMRUNTIME')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
         }
       }
     }
   }
};

-- nvim-treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  indent = {
    enable = false,
  },
  highlight = {
    enable = true,
  }
}

-- ale
vim.g.ale_linters = {
  javascript = 'eslint',
  typescript = 'eslint',
  json = 'fixjson', 
  jsonc = 'fixjson',
  scss = 'stylelint',
  css = 'stylelint',
  python = 'autopep8',
  rust = 'carge',
  swift = ['swiftlint', 'sourcekit-lsp'],
}
--vim.g.ale_linters.javascript = 'eslint'
vim.cmd([[
"  let g:ale_linters = { 'javascript': ['eslint'], 'typescript': 'eslint', 'json': 'fixjson', 'jsonc': 'fixjson', 'scss': 'stylelint', 'sass': 'stylelint', 'css': 'stylelint', 'python': 'autopep8', 'rust': ['rls', 'cargo'], 'swift': ['swiftlint', 'sourcekit-lsp', 'swift'] }
  let g:ale_fixers = { 'json': 'fixjson', 'jsonc': 'fixjson', 'scss': 'prettier', 'sass': 'stylelint', 'css': 'stylelint', 'python': 'autopep8' }
  let g:ale_fix_on_save = 1
  let g:ale_set_highlights = 1
  let g:ale_linters_explicit = 1
  let g:ale_lint_on_enter = 1
  let g:ale_set_signs = 0
  let g:ale_sign_column_always = 1
  let g:ale_sign_error = '✗'
  let g:ale_sign_warning = ' '
  let g:ale_hover_cursor = 0
  
  let g:ale_echo_msg_error_str = '✗'
  let g:ale_echo_msg_warning_str = ' '
]])

-- fzf
vim.cmd("let g:fzf_preview_window = []")

-- nvim-completion
--vim.g.completion_matching_strategy_list = {'exact', 'substring'}
--vim.g.completion_enable_auto_popup = true
--vim.cmd([[
--  let g:completion_matching_ignore_case = 1
--  let g:completion_trigger_keyword_length = 1
--  let g:completion_trigger_on_delete = 0
--  let g:completion_enable_auto_signature = 0
--  let g:completion_enable_auto_hover = 0
--  let g:completion_sorting = 'smallest'
--  let g:completion_confirm_key = ""
--  let g:completion_enable_auto_paren = 0
--  let g:completion_trigger_character = ['.', '::']
--  let g:completion_timer_cycle = 100
--  let g:completion_enable_snippet = 'vim-vsnip'
--  let g:completion_auto_change_source = 1
--  let g:completion_chain_complete_list = [ {'complete_items': ['vim-vsnip' ,'lsp', 'buffer']} ]
--]])

-- vsnip
vim.cmd("let g:vsnip_snippet_dir = expand('~/dotfiles/snippets')")

-- rooter
vim.cmd([[
  let g:rooter_targets = '*'
  let g:rooter_silent_chdir = 1
  let g:rooter_patterns = ['=zsh', '=nvim', '=notes', 'Cargo.toml']
]])

-- clever-f
vim.cmd([[
  let g:clever_f_across_no_line = 1
  let g:clever_f_smart_case = 1
  nmap ; <Plug>(clever-f-repeat-forward)
  nmap , <Plug>(clever-f-repeat-back)
]])

-- airline
vim.cmd([[
  let g:airline_section_x = ''
  let g:airline_section_y = ''
  let g:airline_section_z = ''
  let g:airline_section_error = ''
  let g:airline_section_warning = ''
]])

-- compe
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = {
    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
    luasnip = true;
  };
}




-- disable inline lsp stuff
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = false,
    signs = false,
    update_in_insert = false,
  }
)


