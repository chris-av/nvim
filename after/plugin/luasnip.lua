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

  all = {
    ls.parser.parse_snippet("expand", "-- this is what was expanded"),

    -- luasnip.snippet({
    --   trig = "date",
    --   namr = "Date",
    --   dscr = "Date in the form of YYYY-MM-DD"
    -- })

  },

  lua = {
    ls.parser.parse_snippet("lf", "local $1 = function($2)\n\t$0\nend"),
    s("req", fmt("local {} = require('{}')", { i(1, "default"), rep(1) }))
  },

  javascript = {

    s("for",
    fmt("for (let {}; {}; {}++) {{\n\t{}\n}}",
    { i(1, "var"), i(2, "var"), i(3, "var"), i(4, "var") }
    ))

  },

  -- javascriptreact = {
  --   snippet("")
  -- }

}

