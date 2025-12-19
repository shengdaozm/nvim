local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local f = ls.function_node
local rep = require("luasnip.extras").rep

-- Markdown snippets
ls.add_snippets("markdown", {
  -- Code block
  s("cb", {
    t("```"),
    i(1, "language"),
    t({"", ""}),
    i(2, "code"),
    t({"", "```"}),
    i(0)
  }),

  -- Inline code
  s("ic", {
    t("`"),
    i(1, "code"),
    t("`"),
    i(0)
  }),

  -- Link
  s("link", {
    t("["),
    i(1, "text"),
    t("]("),
    i(2, "url"),
    t(")"),
    i(0)
  }),

  -- Image
  s("img", {
    t("!["),
    i(1, "alt text"),
    t("]("),
    i(2, "url"),
    t(")"),
    i(0)
  }),

  -- Header 1
  s("h1", {
    t("# "),
    i(1, "Header"),
    i(0)
  }),

  -- Header 2
  s("h2", {
    t("## "),
    i(1, "Header"),
    i(0)
  }),

  -- Header 3
  s("h3", {
    t("### "),
    i(1, "Header"),
    i(0)
  }),

  -- Bold text
  s("bold", {
    t("**"),
    i(1, "text"),
    t("**"),
    i(0)
  }),

  -- Italic text
  s("italic", {
    t("*"),
    i(1, "text"),
    t("*"),
    i(0)
  }),

  -- Strikethrough
  s("strike", {
    t("~~"),
    i(1, "text"),
    t("~~"),
    i(0)
  }),

  -- Unordered list
  s("ul", {
    t("- "),
    i(1, "item"),
    t({"", "- "}),
    i(2, "item"),
    t({"", "- "}),
    i(3, "item"),
    i(0)
  }),

  -- Ordered list
  s("ol", {
    t("1. "),
    i(1, "item"),
    t({"", "2. "}),
    i(2, "item"),
    t({"", "3. "}),
    i(3, "item"),
    i(0)
  }),

  -- Blockquote
  s("quote", {
    t("> "),
    i(1, "quote"),
    t({"", "> "}),
    i(2, "quote"),
    i(0)
  }),

  -- Table
  s("table", {
    t("| "),
    i(1, "Header 1"),
    t(" | "),
    i(2, "Header 2"),
    t(" | "),
    i(3, "Header 3"),
    t(" |"),
    t({"", "| --- | --- | --- |", "| "}),
    i(4, "Cell 1"),
    t(" | "),
    i(5, "Cell 2"),
    t(" | "),
    i(6, "Cell 3"),
    t(" |"),
    t({"", "| "}),
    i(7, "Cell 4"),
    t(" | "),
    i(8, "Cell 5"),
    t(" | "),
    i(9, "Cell 6"),
    t(" |"),
    i(0)
  }),

  -- Task list
  s("task", {
    t("- [ ] "),
    i(1, "task"),
    t({"", "- [ ] "}),
    i(2, "task"),
    t({"", "- [ ] "}),
    i(3, "task"),
    i(0)
  }),

  -- Footnote
  s("footnote", {
    t("[^"),
    i(1, "1"),
    t("]: "),
    i(2, "footnote text"),
    i(0)
  }),

  -- Horizontal rule
  s("hr", {
    t({"---", ""}),
    i(0)
  })
})