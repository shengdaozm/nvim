local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local f = ls.function_node
local rep = require("luasnip.extras").rep

-- Global snippets (available in all file types)
ls.add_snippets("all", {
  -- Date
  s("date", {
    f(function()
      return os.date("%Y-%m-%d")
    end)
  }),

  -- Time
  s("time", {
    f(function()
      return os.date("%H:%M:%S")
    end)
  }),

  -- Datetime
  s("datetime", {
    f(function()
      return os.date("%Y-%m-%d %H:%M:%S")
    end)
  }),

  -- Email
  s("email", {
    i(1, "name"),
    t("@"),
    i(2, "example.com")
  }),

  -- URL
  s("url", {
    t("https://"),
    i(1, "example.com")
  }),

  -- TODO comment
  s("todo", {
    t("TODO: "),
    i(1, "what needs to be done")
  }),

  -- FIXME comment
  s("fixme", {
    t("FIXME: "),
    i(1, "what needs to be fixed")
  }),

  -- NOTE comment
  s("note", {
    t("NOTE: "),
    i(1, "important note")
  }),

  -- File header
  s("header", {
    t({"File: "}),
    f(function()
      return vim.fn.expand("%:t")
    end),
    t({"", "Created: "}),
    f(function()
      return os.date("%Y-%m-%d %H:%M:%S")
    end),
    t({"", "Author: "}),
    i(1, "Your Name"),
    t({"", "Description: "}),
    i(2, "File description"),
    t({"", ""})
  }),

  -- License header
  s("mit", {
    t({"MIT License", "", ""}),
    t("Copyright (c) "),
    f(function()
      return os.date("%Y")
    end),
    t(" "),
    i(1, "Your Name"),
    t({"", "", ""}),
    t("Permission is hereby granted, free of charge, to any person obtaining a copy"),
    t({"of this software and associated documentation files (the \"Software\"), to deal"}),
    t({"in the Software without restriction, including without limitation the rights"}),
    t({"to use, copy, modify, merge, publish, distribute, sublicense, and/or sell"}),
    t({"copies of the Software, and to permit persons to whom the Software is"}),
    t({"furnished to do so, subject to the following conditions:", "", ""}),
    t("The above copyright notice and this permission notice shall be included in all"),
    t({"copies or substantial portions of the Software.", "", ""}),
    t("THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR"),
    t("IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,"),
    t("FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE"),
    t("AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER"),
    t("LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,"),
    t("OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE"),
    t("SOFTWARE.")
  })
})