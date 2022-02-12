local ls = require('luasnip')


local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.expand_conditions")



ls.snippets = {

  javascript = {

    -- codeblocks
    s(
      "for", 
      fmt("for (let {}; {}; {}++) {{\n\t{}\n}}", 
        { i(1, "var"), i(2, "cond"), i(3, "var"), i(4, "codeblock") }
      )
    ),

    s(
      "while", 
      fmt("while ({}) {{\n\t{}\n}}", 
        { i(1, "cond"), i(0, "codeblock") }
      )
    ),
    
    -- define functions
    s(
      "fn",
      fmt("function {} ({}) {{\n\t{}\n\treturn\n}}",
        { i(1, "name"), i(2, "args"), i(3, "body") }
      )
    ),

    s(
      "fn_",
      fmt("function {} () {{\n\t{}\n\treturn\n}}",
        { i(1, "name"), i(3, "body") }
      )
    ),

    s(
      "anfn",
      fmt("const {}  = ({}) => {{\n\t{}\n\treturn\n}}",
        { i(1, "name"), i(2, "args"), i(3, "body") }
      )
    ),
    
    s(
      "anfn_",
      fmt("const {}  = () => {{\n\t{}\n\treturn\n}}",
        { i(1, "name"), i(3, "body") }
      )
    )

  },

  javascriptreact = {
    s(
      "f_cmpt",
      fmt("const {} = () => {{\n\treturn (\n\t\t<div>{}</div>\n\t);\n}}",
        { i(1, "name"), i(2, "body") }
      )
    )
  },

  python = {

    s(
      "fn",
      fmt("def {}({}):\n\t{}\n\treturn",
        { i(1, "name"), i(2, "args"), i(3, "body") }
      )
    )

  }

}

