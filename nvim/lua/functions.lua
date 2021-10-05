function _G.r_bracket()
    if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "[]") then
        return t "<right>"
    end
    return t "]"
end

function _G.r_brace()
    if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "{}") then
        return t "<right>"
    end
    return t "}"
end

function _G.r_pren()
    if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "()") then
        return t "<right>"
    end
    return t ")"
end

function _G.backspace()
    if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "[]") then
        return t "<right><bs><bs>"
    end

    if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "{}") then
        return t "<right><bs><bs>"
    end

    if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "()") then
        return t "<right><bs><bs>"
    end

    if (vim.fn.getline("."):sub(vim.fn.col(".") - 2, vim.fn.col(".") + 1) == "{  }") then
        return t "<right><bs><bs>"
    end

    if
        (vim.fn.getline(vim.fn.line(".") - 1):match("{$") and vim.fn.getline("."):match("^$") and
            vim.fn.getline(vim.fn.line(".") + 1):match("^%s*}"))
     then
        return t "<esc>va{c{}<left>"
    end

    if
        (vim.fn.getline(vim.fn.line(".") - 1):match("%($") and vim.fn.getline("."):match("^$") and
            vim.fn.getline(vim.fn.line(".") + 1):match("^%s*%)"))
     then
        return t "<esc>va(c()<left>"
    end

    if
        (vim.fn.getline(vim.fn.line(".") - 1):match("%[$") and vim.fn.getline("."):match("^$") and
            vim.fn.getline(vim.fn.line(".") + 1):match("^%s*%]"))
     then
        return t "<esc>va[c[]<left>"
    end
    return t("<bs>")
end

function _G.enter()
    if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "[]") then
        return t "<cr><esc>O"
    elseif (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "{}") then
        return t "<cr><esc>O"
    elseif (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "()") then
        return t "<cr><esc>O"
    elseif (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")):match("><")) then
        return t "<cr><esc>O"
    else
        return t "<cr>"
    end
end

function _G.esc()
    if (vim.bo.filetype == "fzf") then
        return t "<cmd>x<cr>"
    end
    if (vim.bo.filetype == "floaterm") then
        return t "<cmd>FloatermHide<cr>"
    end
    return t "<cmd>nohl<cr><esc>"
end

function _G.space()
    if (vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".")) == "{}") then
        return t "<space><space><left>"
    else
        return t'<space>'
    end
end

function _G.tab()
    if (vim.fn["vsnip#expandable"]() == 1) then
        return e "<Plug>(vsnip-expand)"
    end

    if (vim.fn.pumvisible() == 1) then
        return vim.cmd("call compe#confirm()")
    end
    return t "<tab>"
end

function _G.down()
    if (vim.fn.pumvisible() == 1) then
        return t "<c-n>"
    end
    return t "<down>"
end

function _G.up()
    if (vim.fn.pumvisible() == 1) then
        return t "<c-p>"
    end
    return t "<up>"
end

function _G.c_space()
    if vim.fn["vsnip#available"](1) > 0 then
        return e "<Plug>(vsnip-expand-or-jump)"
    end
    return ""
end

function _G.c_l()
  if (vim.bo.filetype == 'c') then
    return t':!make'
    
  end
  
end
