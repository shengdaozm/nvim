-- NOTE: a plugin that help you do with the latex project
-- NOTE: the configuration below is desigined to build the chinese book by latex

-- for chinese ,we use xelatex

return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    vim.g.tex_flavor = "xelatex" -- 指定tex文件编译器
    vim.g.vimtex_view_enabled = 0 -- 禁用自动预览
    vim.g.vimtex_view_method = "zathura" -- 指定pdf预览文件
    vim.g.vimtex_compiler_latexmk = { -- 指定自定义编译命令
      callback = 1, -- 编译完成后执行回调函数 (如自动预览)
      options = {
        "-xelatex",
        "-shell-escape",
        "-synctex=1",
        "-interaction=nonstopmode",
      },
    }
  end,
}
