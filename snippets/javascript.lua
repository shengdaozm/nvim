local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local c = ls.choice_node
local f = ls.function_node

-- JavaScript/TypeScript snippets
ls.add_snippets("javascript", {
  -- Function declaration
  s("fn", {
    t("function "),
    i(1, "functionName"),
    t("("),
    i(2, "params"),
    t(") {"),
    t({"", "\t"}),
    i(3, "// function body"),
    t({"", "}"}),
    i(0)
  }),

  -- Arrow function
  s("afn", {
    t("const "),
    i(1, "functionName"),
    t(" = ("),
    i(2, "params"),
    t(") => {"),
    t({"", "\t"}),
    i(3, "// function body"),
    t({"", "}"}),
    i(0)
  }),

  -- Console.log
  s("log", {
    t("console.log("),
    i(1, ""),
    t(")"),
    i(0)
  }),

  -- Variable declaration
  s("const", {
    t("const "),
    i(1, "variable"),
    t(" = "),
    i(2, "value"),
    i(0)
  }),

  -- Let declaration
  s("let", {
    t("let "),
    i(1, "variable"),
    t(" = "),
    i(2, "value"),
    i(0)
  }),

  -- If statement
  s("if", {
    t("if ("),
    i(1, "condition"),
    t(") {"),
    t({"", "\t"}),
    i(2, "// if body"),
    t({"", "}"}),
    i(0)
  }),

  -- If else
  s("ife", {
    t("if ("),
    i(1, "condition"),
    t(") {"),
    t({"", "\t"}),
    i(2, "// if body"),
    t({"", "} else {", "\t"}),
    i(3, "// else body"),
    t({"", "}"}),
    i(0)
  }),

  -- For loop
  s("for", {
    t("for (let "),
    i(1, "i"),
    t(" = "),
    i(2, "0"),
    t("; "),
    f(function(args)
      return args[1][1] or "i"
    end, {1}),
    t(" < "),
    i(3, "length"),
    t("; "),
    f(function(args)
      return args[1][1] or "i"
    end, {1}),
    t("++) {"),
    t({"", "\t"}),
    i(4, "// loop body"),
    t({"", "}"}),
    i(0)
  }),

  -- For each
  s("foreach", {
    t("for (const "),
    i(1, "item"),
    t(" of "),
    i(2, "array"),
    t(") {"),
    t({"", "\t"}),
    i(3, "// loop body"),
    t({"", "}"}),
    i(0)
  }),

  -- Try catch
  s("try", {
    t("try {"),
    t({"", "\t"}),
    i(1, "// try code"),
    t({"", "} catch (", ""}),
    i(2, "error"),
    t(") {"),
    t({"", "\t"}),
    i(3, "// catch code"),
    t({"", "}"}),
    i(0)
  }),

  -- Class
  s("class", {
    t("class "),
    i(1, "ClassName"),
    t(" {"),
    t({"", "\tconstructor("}),
    i(2, "params"),
    t(") {"),
    t({"", "\t\t"}),
    i(3, "// constructor body"),
    t({"", "\t}", "\t", ""}),
    i(4, "// other methods"),
    t({"", "}"}),
    i(0)
  }),

  -- React functional component
  s("rfc", {
    t("import React from 'react';"),
    t({"", "", "const "}),
    i(1, "ComponentName"),
    t(" = ("),
    i(2, "props"),
    t(") => {"),
    t({"", "\treturn ("}),
    t({"", "\t\t<div>"}),
    t({"", "\t\t\t"}),
    i(3, "Component content"),
    t({"", "\t\t</div>"}),
    t({"", "\t);", "}"}),
    t({"", "", "export default "}),
    f(function(args)
      return args[1][1] or "ComponentName"
    end, {1}),
    t(";"),
    i(0)
  })
})