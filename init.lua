  GNU nano 8.3                                                          /home/kyros/.config/nvim/init.lua                                                                    
-------------------------------------------------
require("dapui").setup()
require("dap").adapters.java = function(callback)
  callback({
    type = "server",
    host = "127.0.0.1",
    port = 5005,
  })
end

vim.keymap.set("n", "<leader>db", require("dap").toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dc", require("dap").continue, { desc = "Continue debugging" })

-------------------------------------------------
-- 6. Final Touches
-------------------------------------------------
-- Which-key
require("which-key").setup()

-- Auto-commands
vim.api.nvim_create_autocmd("FileType", {
  pattern = "leetcode",
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.java",
  callback = function()
    vim.lsp.buf.format()
  end,
})

vim.notify("Neovim configuration loaded successfully!", vim.log.levels.INFO)

