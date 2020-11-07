" func Enter()
"   if getline('.')[col('.') - 2:col('.') - 1] == '><'
"     return "\<c-g>u\<cr>\<c-o>O"
"   elseif getline('.')[col('.') - 2:col('.') - 1] == '{}'
"     return "\<c-g>u\<cr>\<c-o>O"
"   elseif getline('.')[col('.') - 2:col('.') - 1] == '()'
"     return "\<c-g>u\<cr>\<c-o>O"
"   elseif getline('.')[col('.') - 2:col('.') - 1] == '[]'
"     return "\<c-g>u\<cr>\<c-o>O"
"   elseif getline('.')[col('.') - 2:col('.') - 1] == '``'
"     return "\<c-g>u\<cr>\<c-o>O"
"   else
"     return "\<c-g>u\<cr>"
"   endif
" endfunction

" func Rbrak()
"   if getline('.')[col('.') - 2:col('.') - 1] == '[]'
"     return "\<right>"
"   endif
"   return "]"
" endfunction

" func Rbrace()
"   if getline('.')[col('.') - 2:col('.') - 1] == '{}'
"     return "\<right>"
"   endif
"   return "}"
" endfunction

" func Rpren()
"   if getline('.')[col('.') - 2:col('.') - 1] == '()'
"     return "\<right>"
"   endif
"   return ")"
" endfunction

" func Backspace()
"   if getline('.')[col('.') - 2:col('.') - 1] == '{}'
"     return "\<right>\<bs>\<bs>"
"   elseif getline('.')[col('.') - 2:col('.') - 1] == '()'
"     return "\<right>\<bs>\<bs>"
"   elseif getline('.')[col('.') - 2:col('.') - 1] == '[]'
"     return "\<right>\<bs>\<bs>"
"   elseif getline('.')[col('.') - 3:col('.')] == '{  }'
"     return "\<right>\<bs>\<bs>"
"   endif
"   return "\<bs>"
" endfunction

" func Space()
"   if getline('.')[col('.') - 2:col('.')] == '{}'
"     return "\<space>\<space>\<left>"
"   else
"     return "\<space>"
"   endif
" endfunction


