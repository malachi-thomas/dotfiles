--- cmp config
local cmp = require'cmp'
local luasnip = require'luasnip'

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' },
    { name = 'cmdline' }
  })
})

local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- Focc `luasnip` users.
      -- vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  completion = {
    completeopt = 'menu,menuone,noinsert',
   -- autocomplete = true,
  },

  mapping = {
  ["<up>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
  ["<down>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
  -- ["<C-Space>"] = cmp.mapping.complete(),
  -- ["<C-Space>"] = cmp.mapping.close(),
  ["<C-space>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.close()
      else
        cmp.complete()
      end
  end, {"i", "c"}),

  ["<CR>"] = cmp.mapping(cmp.mapping.confirm { select = true }, {"i"}),
  ["<Tab>"] = cmp.mapping(function(fallback)
    if luasnip.expand() then
      luasnip.expand()
    elseif cmp.visible() then
      cmp.confirm { select = true }
    elseif check_backspace() then
      fallback()
    else
      fallback()
    end
  end),
  ["<S-Tab>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
    elseif luasnip.jumpable(-1) then
      luasnip.jump(-1)
    else
      fallback()
    end
  end),
  },
  formatting = {
    fields = { "abbr", "kind", "menu" },
    format = function(entry, vim_item)
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        luasnip = "[Snippet]",
        buffer = "[Buffer]",
        path = "[Path]",
      })[entry.source.name]
      return vim_item
    end,
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
    { name = 'emmet_vim' },
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  window = {
    documentation = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    },
  },
  experimental = {
    ghost_text = false,
    native_menu = false,
  },

}

vim.keymap.set({'i', 's'}, '<c-n>', function() if (luasnip.jumpable()) then
    luasnip.jump(1)
  end
end)
 
