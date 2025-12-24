return {
  "luozhiya/fittencode.nvim",
  config = function()
    -- Set updatetime to improve performance
    vim.opt.updatetime = 200

    require("fittencode").setup({
      -- Configure keymaps
      keymaps = {
        inline = {
          -- Ctrl+Tab: Accept all suggestions
          ["<C-Tab>"] = "accept_all_suggestions",
          -- Ctrl+Right: Accept word
          ["<C-Right>"] = "accept_word",
          -- Ctrl+Down: Accept line
          ["<C-Down>"] = "accept_line",
          ["<C-Up>"] = "revoke_line",
          ["<C-Left>"] = "revoke_word",
          ["<A-\\>"] = "triggering_completion",
        },
        chat = {
          ["q"] = "close",
          ["[c"] = "goto_previous_conversation",
          ["]c"] = "goto_next_conversation",
          ["c"] = "copy_conversation",
          ["C"] = "copy_all_conversations",
          ["d"] = "delete_conversation",
          ["D"] = "delete_all_conversations",
        },
      },
    })
  end,
}
