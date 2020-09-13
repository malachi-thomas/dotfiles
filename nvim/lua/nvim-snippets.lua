local match_indentation = require'snippets.utils'.match_indentation
require'snippets'.snippets = {
    ["typescript.tsx"] = {
        -- basic syntax
        ["if"] = [[if ($1) { $0 }]],
        ["else"] = [[else { $0 }]],
        -- custom tags
        ["tag"] = [[<$1>$0</$1>]],
        ["ctag"] = [[<$0 />]]
    },

    ["html"] = {
        -- custom tags
        ["tag"] = [[<$1>$0</$1>]],
        ["ctag"] = [[<$0 />]],
        -- tags
        ["meta"] = [[<meta/>]],
        ["head"] = [[<head>$0</head>]],
        ["--"] = [[<!-- $0 -->]],
        ["html"] = [[<html>$0</html>]],
        ["body"] = [[<body>$0</body>]],
        ["a"] = [[<a>$0</a>]],
        ["abbr"] = [[<abbr>$0</abbr>]],
        ["address"] = [[<address>$0</address>]],
        ["artiale"] = [[<artiale>$0</artiale>]],
        ["tittle"] = [[<tittle>$0</tittle>]],
        ["h1"] = [[<h1>$0</h1>]],
        ["h2"] = [[<h2>$0</h2>]],
        ["h3"] = [[<h3>$0</h3>]],
        ["h4"] = [[<h4>$0</h4>]],
        ["h5"] = [[<h5>$0</h5>]],
        ["h6"] = [[<h6>$0</h6>]],
        ["p"] = [[<p>$0</p>]],
        ["em"] = [[<em>$0</em>]],
        ["b"] = [[<b>$0</b>]],
        ["i"] = [[<i>$0</i>]],
        ["small"] = [[<small>$0</small>]],
        ["u"] = [[<u>$0</u>]],
        ["strike"] = [[<strike>$0</strike>]],
        ["a"] = [[<a href="$0"></a>]],
        ["li"] = [[<li>$0</li>]],
        ["ol"] = [[<ol>$0</ol>]],
        ["ul"] = [[<ul>$0</ul>]],
        ["marquee"] = [[<marquee>$0</marquee>]],
        ["center"] = [[<center>$0</center>]],
        ["font"] = [[<font>$0</font>]],
        ["table"] = [[<table>$0</table>]],
        ["tr"] = [[<tr>$0</tr>]],
        ["hr"] = [[<hr>$0</hr>]],
        ["td"] = [[<td>$0</td>]],
        ["form"] = [[<form>$0</form>]],
        -- self closing tags
        ["area"] = [[<area />]],
        ["br"] = [[<br />]],
        ["hr"] = [[<hr />]],
        ["img"] = [[<img />]],
        ["link"] = [[<link rel="stylesheet" type="text/css" href="$0"/>]],
        ["meta"] = [[<meta />]],
        ["input"] = [[<input />]]
    },

    ["lua"] = {
        ["tag"] = [[<$1>$0</$1>]],
        ["ctag"] = [[<$0 />]],
        ["s"] = "[\"$1\"] = [[$2]],$0",
        ["st"] = "[\"$1\"] = [[<$1>$2</$1>]],$0",
        ["sct"] = "[\"$1\"] = [[<$1 />]],$0"
    }
}
