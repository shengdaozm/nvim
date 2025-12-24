return {
  "kawre/leetcode.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    -- 配置使用 leetcode.cn
    lang = "cpp",
    cn = { -- 中文网站配置
      enabled = true, -- 启用中国区网站
      translator = true, -- 启用题目翻译
      translate_problems = true, -- 翻译题目描述
    },
    -- 配置 cpp 语言的模板和常用头文件
    injector = {
      ["cpp"] = {
        before = {
          [[
#include <iostream>
#include <vector>
#include <string>
#include <map>
#include <unordered_map>
#include <set>
#include <unordered_set>
#include <algorithm>
#include <stack>
#include <queue>
#include <deque>
#include <list>
#include <numeric>
#include <functional>
#include <climits>
#include <cmath>
#include <cstring>

using namespace std;
]],
        },
      },
    },
    -- 配置存储路径
    storage = {
      home = vim.fn.stdpath("data") .. "/leetcode",
      cache = vim.fn.stdpath("cache") .. "/leetcode",
    },
  },
  config = function(_, opts)
    require("leetcode").setup(opts)

    -- 添加快捷键
    vim.keymap.set("n", "<leader>lc", "<cmd>Leet<cr>", { desc = "打开Leetcode" })
    vim.keymap.set("n", "<leader>lr", "<cmd>Leet run<cr>", { desc = "测试代码" })
    vim.keymap.set("n", "<leader>ls", "<cmd>Leet submit<cr>", { desc = "提交代码" })
    vim.keymap.set("n", "<leader>li", "<cmd>Leet info<cr>", { desc = "Problem Info" })
  end,
}
