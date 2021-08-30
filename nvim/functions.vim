
func! Rbrak()
  if getline('.')[col('.') - 2:col('.') - 1] == '[]'
    return "\<right>"
  endif
  return "]"

endfunc

func! Rbrace()
  if getline('.')[col('.') - 2:col('.') - 1] == '{}'
    return "\<right>"
  endif
  return "}"
endfunc

func! Rpren()
  if getline('.')[col('.') - 2:col('.') - 1] == '()'
    return "\<right>"
  endif
  return ")"
endfunc

func! Backspace()
  if getline('.')[col('.') - 2:col('.') - 1] == '{}'
    return "\<right>\<bs>\<bs>"
  elseif getline('.')[col('.') - 3:col('.')] == '{  }'
    return "\<right>\<bs>\<bs>"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '()'
    return "\<right>\<bs>\<bs>"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '[]'
    return "\<right>\<bs>\<bs>"
  elseif getline('.')[col('.') - 2:col('.') - 1] == "''"
    return "\<right>\<bs>\<bs>"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '""'
    return "\<right>\<bs>\<bs>"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '``'
    return "\<right>\<bs>\<bs>"
  elseif getline(line('.') + 1) =~ "\^\\s\*}" && getline(line('.') - 1)[strlen(getline(line('.') - 1)) - 1] == "{" && col('.') == '1'
    return "\<esc>va{di{}\<left>"
  elseif getline(line('.') + 1) =~ "\^\\s\*)" && getline(line('.') - 1)[strlen(getline(line('.') - 1)) - 1] == "(" && col('.') == '1'
    return "\<esc>va(di()\<left>"
  elseif getline(line('.') + 1) =~ "\^\\s\*]" && getline(line('.') - 1)[strlen(getline(line('.') - 1)) - 1] == "[" && col('.') == '1'
    return "\<esc>va[di[]\<left>"
  elseif getline(line('.') + 1) =~ "\^\\s\*</\\w*>" && getline(line('.') - 1) =~ "<\\w*>\$" && col('.') == '1'
    return "\<esc>cit"
  else
    return "\<bs>"
  endif
endfunc



func! Enter()
  if getline('.')[col('.') - 2:col('.') - 1] == '><'
    return "\<cr>\<esc>O"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '{}'
    return "\<cr>\<esc>O"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '()'
    return "\<cr>\<esc>O"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '[]'
    return "\<cr>\<esc>O"
  elseif getline('.')[col('.') - 2:col('.') - 1] == '``'
    return "\<cr>\<esc>O"
  else
    return "\<cr>"
  endif
endfunc


func! Space()
  if getline('.')[col('.') - 2:col('.')] == '{}'
    return "\<space>\<space>\<left>"
  else
    return "\<space>"
  endif
endfunc

func! BufferClose()
endfunc

func! Check_back_space() abort
  return !col('.') - 1 || getline('.')[col('.') - 1]  =~# '\s'
endfunction

func! Check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

