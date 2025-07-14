  GNU nano 8.3                                                          /home/kyros/.config/nvim/init.lua                                                                    
-- ╭─────────────────────────────────────────────╮
-- │      Neovim "LeetCode ++" Ultimate Config   │
-- │       Fedora · Java · LeetCode · LSP        │
-- ╰─────────────────────────────────────────────╯

-------------------------------------------------
-- 0. Bootstrap and Basic Configuration
-------------------------------------------------
vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.clipboard = "unnamedplus"

-- Set up lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-------------------------------------------------
-- 1. Plugin Specifications (Ollama Removed)
-------------------------------------------------
require("lazy").setup({
  -- UI and Appearance
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000 },
                                                                             [ Read 217 lines ]
^G Help          ^O Write Out     ^F Where Is	   ^K Cut           ^T Execute       ^C Location      M-U Undo         M-A Set Mark     M-] To Bracket   M-B Previous
^X Exit          ^R Read File     ^\ Replace	   ^U Paste         ^J Justify       ^/ Go To Line    M-E Redo         M-6 Copy         ^B Where Was     M-F Next

