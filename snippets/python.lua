local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local f = ls.function_node
local c = ls.choice_node

-- Python snippets
ls.add_snippets("python", {
  -- Function definition
  s("def", {
    t("def "),
    i(1, "function_name"),
    t("("),
    i(2, "args"),
    t("):"),
    t({"", "\t\"\"\""}),
    t({"", "\t"}),
    i(3, "Function description"),
    t({"", "\t\"\"\"", ""}),
    t({"", "\t"}),
    i(4, "pass"),
    t({"", ""}),
    i(0)
  }),

  -- Class definition
  s("class", {
    t("class "),
    i(1, "ClassName"),
    t(":"),
    t({"", "\t\"\"\""}),
    t({"", "\t"}),
    i(2, "Class description"),
    t({"", "\t\"\"\"", ""}),
    t({"", "\tdef __init__(self"}),
    t(", "),
    i(3, "args"),
    t("):"),
    t({"", "\t\t"}),
    i(4, "pass"),
    t({"", ""}),
    i(0)
  }),

  -- If statement
  s("if", {
    t("if "),
    i(1, "condition"),
    t(":"),
    t({"", "\t"}),
    i(2, "pass"),
    i(0)
  }),

  -- If else
  s("ife", {
    t("if "),
    i(1, "condition"),
    t(":"),
    t({"", "\t"}),
    i(2, "pass"),
    t({"", "else:", "\t"}),
    i(3, "pass"),
    i(0)
  }),

  -- For loop
  s("for", {
    t("for "),
    i(1, "item"),
    t(" in "),
    i(2, "iterable"),
    t(":"),
    t({"", "\t"}),
    i(3, "pass"),
    i(0)
  }),

  -- While loop
  s("while", {
    t("while "),
    i(1, "condition"),
    t(":"),
    t({"", "\t"}),
    i(2, "pass"),
    i(0)
  }),

  -- Print statement
  s("print", {
    t("print("),
    i(1, ""),
    t(")"),
    i(0)
  }),

  -- Import statement
  s("imp", {
    t("import "),
    i(1, "module"),
    i(0)
  }),

  -- From import
  s("from", {
    t("from "),
    i(1, "module"),
    t(" import "),
    i(2, "name"),
    i(0)
  }),

  -- Try except
  s("try", {
    t("try:"),
    t({"", "\t"}),
    i(1, "pass"),
    t({"", "except "}),
    i(2, "Exception"),
    t(" as "),
    i(3, "e"),
    t(":"),
    t({"", "\t"}),
    i(4, "pass"),
    i(0)
  }),

  -- List comprehension
  s("lc", {
    t("["),
    i(1, "expression"),
    t(" for "),
    i(2, "item"),
    t(" in "),
    i(3, "iterable"),
    t("]"),
    i(0)
  }),

  -- Dictionary comprehension
  s("dc", {
    t("{"),
    i(1, "key"),
    t(": "),
    i(2, "value"),
    t(" for "),
    i(3, "key"),
    t(", "),
    i(4, "value"),
    t(" in "),
    i(5, "iterable"),
    t("}"),
    i(0)
  }),

  -- Main guard
  s("main", {
    t("if __name__ == '__main__':"),
    t({"", "\t"}),
    i(1, "main()"),
    i(0)
  }),

  -- Lambda function
  s("lambda", {
    i(1, "func_name"),
    t(" = lambda "),
    i(2, "args"),
    t(": "),
    i(3, "expression"),
    i(0)
  })
})