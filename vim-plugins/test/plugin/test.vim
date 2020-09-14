fun! Testing()
  " dont forget to remove this one, only for testing
  lua for k in pairs(package.loaded) do if k:match("^test") then  package.loaded[k] = nill end end
  lua require("test").helloWorld()
endfun

augroup testing
  autocmd!
augroup end
