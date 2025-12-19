local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node

-- Lua snippets
ls.add_snippets("lua", {
  -- Function template
  s("func", {
    t("local "),
    i(1, "function_name"),
    t(" = function("),
    i(2, "args"),
    t({")", "\t"}),
    i(3, "-- function body"),
    t({"", "end"}),
    i(0)
  }),

  -- For loop
  s("for", {
    t("for "),
    i(1, "i"),
    t(" = "),
    i(2, "1"),
    t(", "),
    i(3, "10"),
    t(" do"),
    t({"", "\t"}),
    i(4, "-- loop body"),
    t({"", "end"}),
    i(0)
  }),

  -- For each loop
  s("fori", {
    t("for "),
    i(1, "key"),
    t(", "),
    i(2, "value"),
    t(" in pairs("),
    i(3, "table"),
    t(") do"),
    t({"", "\t"}),
    i(4, "-- loop body"),
    t({"", "end"}),
    i(0)
  }),

  -- If statement
  s("if", {
    t("if "),
    i(1, "condition"),
    t(" then"),
    t({"", "\t"}),
    i(2, "-- if body"),
    t({"", "end"}),
    i(0)
  }),

  -- If else statement
  s("ife", {
    t("if "),
    i(1, "condition"),
    t(" then"),
    t({"", "\t"}),
    i(2, "-- if body"),
    t({"", "else", "\t"}),
    i(3, "-- else body"),
    t({"", "end"}),
    i(0)
  }),

  -- Print statement
  s("print", {
    t('print("'),
    i(1, ""),
    t('")'),
    i(0)
  }),

  -- Require statement
  s("req", {
    t("local "),
    i(1, "module"),
    t(' = require("'),
    f(function(args)
      return args[1][1] or ""
    end, {1}),
    t('")'),
    i(0)
  }),

  -- Table definition
  s("table", {
    t("local "),
    i(1, "name"),
    t(" = {"),
    t({"", "\t"}),
    i(2, "key = value"),
    t({"", "}"}),
    i(0)
  }),

  -- Vim command
  s("vimcmd", {
    t("vim.cmd("),
    c(1, {
      t('"'),
      i(1, "command"),
      t('"'),
      t({"", "vim.api.nvim_feedkeys("}),
      t('"'),
      i(2, "keys"),
      t('"'),
      t(", 'n', true)")
    }),
    t(")"),
    i(0)
  })
})