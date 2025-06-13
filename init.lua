-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"

-- 合并系统的截切板,同时针对ssh和macos还需要进行配置额外的设置
-- macos 使用pbcopy or pbpaste
-- ssh use lemonade or doitclient
-- TODO: 目前无法在windows上使用，可以在macos上使用这个，windows上运行需要运行Vcxrsv，我不喜欢，windows上的剪切板暂时搁置
-- 或者采用服务器和windows都跑一个服务进程越过x11，但是我都不喜欢
-- 下述的命令可以在macos下启用，打通两端的额剪切板
-- vim.opt.clipboard = "unnamedplus"
