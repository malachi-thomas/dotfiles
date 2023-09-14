vim.g.maplader = '<space>'

vim.keymap.set('i', '<cr>', function()
  if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "[]") then
      return vim.api.nvim_replace_termcodes("<cr><esc>O", true, true, true)
  elseif (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "{}") then
      return vim.api.nvim_replace_termcodes("<cr><esc>O", true, true, true)
  elseif (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "()") then
      return vim.api.nvim_replace_termcodes("<cr><esc>O", true, true, true)
  elseif (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")):match("><")) then
      return vim.api.nvim_replace_termcodes("<cr><esc>O", true, true, true)
  else
      return vim.api.nvim_replace_termcodes("<cr>", true, true, true)
  end
end, {expr = true})

vim.keymap.set('i', ']', function ()
    if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "[]") then
       return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Right>', true, false, true), 'n', true)
      end
    return vim.api.nvim_replace_termcodes("]", true, true, true)
end, {expr = true})

vim.keymap.set('i', '}', function ()
    if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "{}") then
       return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Right>', true, false, true), 'n', true)
      end
    return vim.api.nvim_replace_termcodes("}", true, true, true)
end, {expr = true})

vim.keymap.set('i', ')', function ()
    if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "()") then
       return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Right>', true, false, true), 'n', true)
      end
    return vim.api.nvim_replace_termcodes(")", true, true, true)
end, {expr = true})

vim.keymap.set('i', '<space>', function()
    if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "{}") then
        return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<space><space><left>", true, true, true), "n", true)
    else
        return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<space>', true, true, true), "n", true)
    end
end, {expr = true})



vim.keymap.set('i', '<bs>', function()
      if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "[]") then
        return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<right><bs><bs>", true, true, true), "n", true) --
    end

    if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "{}") then
        return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<right><bs><bs>", true, true, true), "n", true) --
    end

    if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "()") then
        return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<right><bs><bs>", true, true, true), "n", true) --
    end

    if (vim.fn.getline("."):sub(vim.fn.col(".") - 2, vim.fn.col(".") + 1) == "{  }") then
        return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<right><bs><bs>", true, true, true), "n", true) --
    end
    if
        (vim.fn.getline(vim.fn.line(".") - 1):match("{$") and vim.fn.getline("."):match("^$") and vim.fn.getline(vim.fn.line(".") + 1):match("^%s*}")) then
        return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<esc>va{c{}<left>", true, true, true), "n", true) --
    end
    if
        (vim.fn.getline(vim.fn.line(".") - 1):match("%($") and vim.fn.getline("."):match("^$") and vim.fn.getline(vim.fn.line(".") + 1):match("^%s*%)")) then
        return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<esc>va(c()<left>", true, true, true), "n", true) --
    end

    if
        (vim.fn.getline(vim.fn.line(".") - 1):match("%[$") and vim.fn.getline("."):match("^$") and vim.fn.getline(vim.fn.line(".") + 1):match("^%s*%]")) then
        return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<esc>va[c[]<left>", true, true, true), "n", true) --
    end
    return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<bs>", true, true, true), "n", true) --
end, {expr = true})
vim.keymap.set('n', 's', '<nop>')
vim.keymap.set('n', 'q', '<nop>')
vim.keymap.set('n', '<space><left>', '<c-w>h')
vim.keymap.set('n', '<space><right>', '<c-w>l')
vim.keymap.set('n', '<space><down>', '<c-w>j')
vim.keymap.set('n', '<space><up>', '<c-w>k')
vim.keymap.set('n', '<c-s>', "<cmd>write!<cr>")
-- vim.keymap.set('n', '-', '<cmd>Oil<CR>')
vim.keymap.set('n', '<c-w>', '<cmd>BufferClose<cr>')
vim.keymap.set('n', '<space>pi', '<cmd>PackerInstall<cr>')
vim.keymap.set('n', '<space><space>', require'telescope.builtin'.find_files, {})
vim.keymap.set('n', '<space>f', require'telescope.builtin'.live_grep, {})
vim.keymap.set('n', '<tab>', '<cmd>bn<cr>')
vim.keymap.set('n', '<s-tab>', '<cmd>bp<cr>')
vim.keymap.set('n', '<space>vs', '<cmd>vsplit<cr>')
vim.keymap.set('n', '<space>hs', '<cmd>split<cr>')
vim.keymap.set('n', '<c-t>', '<cmd>FloatermToggle<cr>')
vim.keymap.set('n', '<space>t', '<cmd>NvimTreeToggle<cr>')
vim.keymap.set('n', '<space>t', '<cmd>NvimTreeToggle<cr>')
vim.keymap.set('n', '<home>', '^')
-- vim.keymap.set('n', 'ss', ':%s//')
vim.keymap.set('t', '<c-t>', '<cmd>FloatermToggle<cr>')
-- vim.keymap.set('c', ':', '<cmd>Telescope commands<cr>')
vim.keymap.set('i', '[', '[]<left>')
vim.keymap.set('i', '(', '()<left>')
vim.keymap.set('i', '{', '{}<left>')
vim.keymap.set('i', '<m-bs>', '<c-w>')
vim.keymap.set('n', '<space>rr', '<cmd>so ~/.config/nvim/init.lua<cr>')
vim.keymap.set('n', '<space>oi', '<cmd>Oil<cr>')
vim.keymap.set('n', '<space>x', ':SearchBoxIncSearch<CR>')
-- vim.keymap.set('i', '"', '""<left>')
-- vim.keymap.set('i', "'", "''<left>'")

vim.keymap.set('n', '<space>sn', function()
  local str = '<:e ~/.config/nvim/lua/snippets/' .. vim.bo.filetype .. '.snippets<cr>'
    return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(str, true, true, true), "n", true)
end)
