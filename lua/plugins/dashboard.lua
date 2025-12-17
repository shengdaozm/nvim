-- 自定义 dashboard 配置，替换 LazyVim logo 为古诗
return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        -- 替换默认的 LazyVim logo为古诗
        header = [[
╗╔╗╔╗╔╦═╗╔═╗╔╗ ╔╦╗╔═╗╔╦╗╔═╗╦  ╔═╗╔═╗╔═╗╔═╗
╠╣║║║║╠╦╝╠═╝╠╩╗ ║ ║╣ ║║║╠═╝║  ║  ║╣ ╚═╗╚═╗
╚ ╚╝╚╝╩╚═╩  ╚═╝ ╩ ╚═╝╩ ╩╩  ╩═╝╚═╝╚═╝╚═╝╚═╝

来时，入江湖，意气风发
去时，出江湖，问心无愧
]],
      },
    },
  },
}
