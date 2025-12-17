return {
  "rebelot/kanagawa.nvim",
  lazy = false, -- 确保主题在启动时加载
  priority = 1000, -- 优先级高于其他插件
  config = function()
    -- 配置主题
    require("kanagawa").setup({
      -- 可选配置（使用默认配置可省略）
      theme = "wave", -- 可选 "wave"、"dragon"、"lotus"
      transparent = false, -- 是否透明背景
      dimInactive = false, -- 是否淡化非活动窗口
      -- 其他配置参考官方文档
    })

    -- 加载主题
    vim.cmd("colorscheme kanagawa")
  end,
}
