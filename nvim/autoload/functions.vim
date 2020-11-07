func Enter()
  if getline('.')[col('.') - 2:col('.') - 1] == '><'
    return "\<c-g>u\<cr>\<c-o>O"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '{}'
    return "\<c-g>u\<cr>\<c-o>O"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '()'
    return "\<c-g>u\<cr>\<c-o>O"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '[]'
    return "\<c-g>u\<cr>\<c-o>O"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '``'
    return "\<c-g>u\<cr>\<c-o>O"
  else
    return "\<c-g>u\<cr>"
  endif
endfunction

func Rbrak()
  if getline('.')[col('.') - 2:col('.') - 1] == '[]'
    return "\<right>"
  endif
  return "]"
endfunction

func Rbrace()
  if getline('.')[col('.') - 2:col('.') - 1] == '{}'
    return "\<right>"
  endif
  return "}"
endfunction

func Rpren()
  if getline('.')[col('.') - 2:col('.') - 1] == '()'
    return "\<right>"
  endif
  return ")"
endfunction

func Backspace()
  if getline('.')[col('.') - 2:col('.') - 1] == '{}'
    return "\<right>\<bs>\<bs>"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '()'
    return "\<right>\<bs>\<bs>"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '[]'
    return "\<right>\<bs>\<bs>"
  elseif getline('.')[col('.') - 3:col('.')] == '{  }'
    return "\<right>\<bs>\<bs>"
  endif
  return "\<bs>"
endfunction

func Space()
  if getline('.')[col('.') - 2:col('.')] == '{}'
    return "\<space>\<space>\<left>"
  else
    return "\<space>"
  endif
endfunction

func! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunc

func! BufferClose()
  if len(getbufinfo({'buflisted':1})) > 1
    " more then one buffer open
    if &readonly == 1 || expand('%') == '' || &buftype == 'terminal'
      silent bd!
    else
      silent w! | bd!
    endif
  else
    " only one buffer open
    if &readonly == 1 || expand('%') == '' || &buftype == 'terminal'
      silent q!
    else
      silent wq!
    endif
  endif
endfunc

