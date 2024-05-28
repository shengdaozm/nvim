-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- change colortheme
  { import = "astrocommunity.colorscheme.everforest" },
  -- add lua lsp
  { import = "astrocommunity.pack.lua" },
  -- add cpp lsp
  { import = "astrocommunity.pack.cpp" },
  -- add notice plugin
  { import = "astrocommunity.utility.noice-nvim" },
  -- add cmdline plugin
  { import = "astrocommunity.completion.cmp-cmdline" },
}
