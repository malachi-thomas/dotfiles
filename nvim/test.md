So if I have **file1.txt, file2.txt, file3.txt** open in tabs and I am on **file1.txt** and I do `:Files<cr>file2.txt<cr>`
it will change the **file1.txt** to **file2.txt** but now my tabs will be **file2.txt, file2.txt, file3.txt**
but I want it to jump me to **file2.txt** if it is open in a tab.
But if **file2.txt** is not open then I want it to change the current buffer to **file2.txt** like what `let g:fzf_buffers_jump = 1` dose
