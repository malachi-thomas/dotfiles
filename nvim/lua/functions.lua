vim.keymap.set('n', '<leader>fg', ":hello")
function nnmap(lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap('n', lhs, rhs, options)
end

function nmap(lhs, rhs, opts)
  local options = {noremap = false, silent = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap('n', lhs, rhs, options)
end

function nnmap(lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap('i', lhs, rhs, options)
end

local function tnmap(lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap('t', lhs, rhs, options)
end


-- local function t(str)
--   return vim.api.nvim_replace_termcodes(str, true, true, true)
-- end



function _G.enter()
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
end

