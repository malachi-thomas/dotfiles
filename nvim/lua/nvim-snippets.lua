require'snippets'.snippets = {
    ["typescript"] = {

    },
    ["json"] = {},
    ["zsh"] = {

    },
    ["bash"] = {

    },
    ["vim"] = {
        ["nn"] = "nnoremap ",
        ["vv"] = "vnoremap ",
        ["oo"] = "onoremap ",
        ["ss"] = "snoremap ",
        ["xx"] = "xnoremap ",
        ["ii"] = "inoremap ",
    },
    ["vimwiki"] = {
        ["link"] = "[$1]($1.md)"
    },
    ["typescript.tsx"] = {
        -- custom snippets
        ["class"] = "className=\"$0\"",
        ["id"] = "id=\"$0\"",
        ["import"] = "import $0 from ''",
        ["React"] = "import React from 'react'",
        ["ReactDOM"] = "import ReactDOM from 'react-dom'",
        ["export"] = "export default ",
        ["func"] = "const $0 =  => ",
        ["const"] = "const $0 = ",
        ["let"] = "let $0 = ",
        ["render"] = "ReactDOM.render(<$0 />, document.getElementById('root'))",
        ["comp"] = "const $0 = () => {\n  return (\n    <div>\n\n    </div>\n  )\n}",
        ["onClick"] = "onClick={$0}",
        ["cl"] = "console.log($0)",
        ["useState"] = "const [$0, ] = useState()",

        -- custom tags

        ["tag"] = "<$1>$0</$1>",
        ["ctag"] = "<$0 />",
        -- tags

        ["head"] = "<head>$0</head>",
        ["--"] = "<!-- $0 -->",
        ["html"] = "<html>$0</html>",
        ["body"] = "<body>$0</body>",
        ["abbr"] = "<abbr>$0</abbr>",
        ["address"] = "<address>$0</address>",
        ["artiale"] = "<artiale>$0</artiale>",
        ["tittle"] = "<tittle>$0</tittle>",
        ["h1"] = "<h1>$0</h1>",
        ["h2"] = "<h2>$0</h2>",
        ["h3"] = "<h3>$0</h3>",
        ["h4"] = "<h4>$0</h4>",
        ["h5"] = "<h5>$0</h5>",
        ["h6"] = "<h6>$0</h6>",
        ["p"] = "<p>$0</p>",
        ["em"] = "<em>$0</em>",
        ["b"] = "<b>$0</b>",
        ["i"] = "<i>$0</i>",
        ["small"] = "<small>$0</small>",
        ["u"] = "<u>$0</u>",
        ["strike"] = "<strike>$0</strike>",
        ["a"] = "<a href=\"$0\"></a>",
        ["li"] = "<li>$0</li>",
        ["ol"] = "<ol>$0</ol>",
        ["ul"] = "<ul>$0</ul>",
        ["marquee"] = "<marquee>$0</marquee>",
        ["center"] = "<center>$0</center>",
        ["font"] = "<font>$0</font>",
        ["table"] = "<table>$0</table>",
        ["tr"] = "<tr>$0</tr>",
        ["td"] = "<td>$0</td>",
        ["form"] = "<form>$0</form>",
        ["div"] = "<div>$0</div>",
        ["span"] = "<span>$0</span>",
        ["button"] = "<button>$0</button>",
        -- self closing tags
        ["area"] = "<area />",
        ["br"] = "<br />",
        ["hr"] = "<hr />",
        ["img"] = "<img />",
        ["link"] = "<link rel=\"stylesheet\" type=\"text/css\" href=\"$0\" />",
        ["meta"] = "<meta/>",
        ["input"] = "<input type=\"text\" />",
        ["checkbox"] = "<input type=\"checkbox\" />",
        ["submit"] = "<input type=\"submit\" />",
    },

    ["html"] = {
        -- custom tags
        ["tag"] = "<$1>$0</$1>",
        ["ctag"] = "<$0 />",
        -- tags
        ["head"] = "<head>$0</head>",
        ["--"] = "<!-- $0 -->",
        ["html"] = "<html>$0</html>",
        ["body"] = "<body>$0</body>",
        ["abbr"] = "<abbr>$0</abbr>",
        ["address"] = "<address>$0</address>",
        ["artiale"] = "<artiale>$0</artiale>",
        ["tittle"] = "<tittle>$0</tittle>",
        ["h1"] = "<h1>$0</h1>",
        ["h2"] = "<h2>$0</h2>",
        ["h3"] = "<h3>$0</h3>",
        ["h4"] = "<h4>$0</h4>",
        ["h5"] = "<h5>$0</h5>",


        ["h6"] = "<h6>$0</h6>",
        ["p"] = "<p>$0</p>",
        ["em"] = "<em>$0</em>",
        ["b"] = "<b>$0</b>",
        ["i"] = "<i>$0</i>",
        ["small"] = "<small>$0</small>",
        ["u"] = "<u>$0</u>",
        ["strike"] = "<strike>$0</strike>",
        ["a"] = "<a href=\"$0\"></a>",
        ["li"] = "<li>$0</li>",
        ["ol"] = "<ol>$0</ol>",
        ["ul"] = "<ul>$0</ul>",
        ["marquee"] = "<marquee>$0</marquee>",
        ["center"] = "<center>$0</center>",
        ["font"] = "<font>$0</font>",
        ["table"] = "<table>$0</table>",
        ["tr"] = "<tr>$0</tr>",
        ["td"] = "<td>$0</td>",
        ["form"] = "<form>$0</form>",
        ["div"] = "<div>$0</div>",
        ["span"] = "<span>$0</span>",
        -- self closing tags
        ["area"] = "<area />",
        ["br"] = "<br />",
        ["hr"] = "<hr />",
        ["img"] = "<img />",
        ["link"] = "<link rel=\"stylesheet\" type=\"text/css\" href=\"$0\"/>",
        ["meta"] = "<meta />",
        ["input"] = "<input />"
    },
    ["lua"] = {
        -- snippet snippets
        ["s"] = "[\"$1\"] = \"$2\",",
        ["st"] = "[\"$1\"] = \"<$1>$0</$1>\",",
        ["sct"] = "[\"$1\"] = \"<$1 />\",",
        -- basic keywords
        ["func"] = "local function $0()",
        ["if"] = "if($0) then",
        ["local"] = "local $0 = ",
        ["print"] = "print($0)",
        ["while"] = "while $0 do",
        ["for"] = "for $0 = 1,  do",
        -- neovim functions
        ["nvim_open_win"] = "api.nvim_open_win($0)",
        ["nvim_create_buf"] = "api.nvim_create_buf($0)",
        ["nvim_put"] = "api.nvim_put($0)",
        ["nvim_paste"] = "api.nvim_paste($0, ,)",


    }
}




