function _G.r_bracket()
  if (vim.fn.getline('.'):sub(vim.fn.col('.') - 1, vim.fn.col('.')) == '[]') then
    return send_string('<right>')
  end
  return send_string(']')
end

function _G.r_brace()
  if (vim.fn.getline('.'):sub(vim.fn.col('.') - 1, vim.fn.col('.')) == '{}') then
    return send_string('<right>')
  end
return send_string('}')
end

function _G.r_pren()
  if (vim.fn.getline('.'):sub(vim.fn.col('.') - 1, vim.fn.col('.')) == '()') then
    return send_string("<right>")
  end
  return send_string(")")
end

function _G.backspace()
  if (vim.fn.getline('.'):sub(vim.fn.col('.') - 1, vim.fn.col('.')) == '[]') then
    return send_string('<right><bs><bs>')
  end

  if (vim.fn.getline('.'):sub(vim.fn.col('.') - 1, vim.fn.col('.')) == '{}') then
    return send_string('<right><bs><bs>')
  end

  if (vim.fn.getline('.'):sub(vim.fn.col('.') - 1, vim.fn.col('.')) == '()') then
    return send_string('<right><bs><bs>')
  end

  if (vim.fn.getline('.'):sub(vim.fn.col('.') - 2, vim.fn.col('.') + 1) == "{  }") then
    return send_string('<right><bs><bs>')
  end

  if (vim.fn.getline(vim.fn.line('.') - 1):match('{$') and vim.fn.getline('.'):match('^$') and vim.fn.getline(vim.fn.line('.') + 1):match('^%s*}')) then
    return send_string('<esc>va{c{}<left>')
  end

  if (vim.fn.getline(vim.fn.line('.') - 1):match('%($') and vim.fn.getline('.'):match('^$') and vim.fn.getline(vim.fn.line('.') + 1):match('^%s*%)')) then
    return send_string('<esc>va(c()<left>')
  end

  if (vim.fn.getline(vim.fn.line('.') - 1):match('%[$') and vim.fn.getline('.'):match('^$') and vim.fn.getline(vim.fn.line('.') + 1):match('^%s*%]')) then
    return send_string('<esc>va[c[]<left>')
  end
  return send_string('<bs>')
end

function _G.enter()
  if (vim.fn.getline('.'):sub(vim.fn.col('.') - 1, vim.fn.col('.')) == '[]') then
    return send_string('<cr><esc>O')
  elseif (vim.fn.getline('.'):sub(vim.fn.col('.') - 1, vim.fn.col('.')) == '{}') then
    return send_string('<cr><esc>O')
  elseif (vim.fn.getline('.'):sub(vim.fn.col('.') - 1, vim.fn.col('.')) == '()') then
    return send_string('<cr><esc>O')
  elseif (vim.fn.getline('.'):sub(vim.fn.col('.') - 1, vim.fn.col('.')):match('><')) then
    return send_string('<cr><esc>O')
  else
    return send_string('<cr>')
  end
end

function _G.space()
  if (vim.fn.getline('.'):sub(vim.fn.col('.') - 1, vim.fn.col('.')) == '{}') then
    return send_string('<space><space><left>')
  else
    return send_string('<space>')
  end
end

function _G.tab()
  if vim.call('vsnip#expandable') > 0 then
    return esc('<Plug>(vsnip-expand)')
  end

  if (vim.fn.pumvisible() == 1) then
    return vim.cmd('call compe#confirm()')
  end

  
  return send_string('<tab>')
end

function _G.down()
  if (vim.fn.pumvisible() == 1) then
    return send_string('<c-n>')
  end
  return send_string('<down>')
end

function _G.up()
  if (vim.fn.pumvisible() == 1) then
    return send_string('<c-p>')
  end
  return send_string('<up>')
end

function _G.c_j()
  if vim.fn['vsnip#jumpable'](1) > 0 then
    return esc('<Plug>(vsnip-jump-next)')
  end
end

function _G.c_k()
  if vim.fn['vsnip#jumpable'](-1) > 0 then
    return esc('<Plug>(vsnip-jump-prev)')
  end
end


