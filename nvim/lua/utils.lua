
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

function inmap(lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap('i', lhs, rhs, options)
end

function imap(lhs, rhs, opts)
  local options = {noremap = false, silent = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap('i', lhs, rhs, options)
end

function send_string(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function esc(cmd)
  return vim.api.nvim_replace_termcodes(cmd, true, false, true)
end

