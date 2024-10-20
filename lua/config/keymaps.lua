-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = LazyVim.safe_keymap_set

-- only
map("n", "<leader>o", "<cmd>only<cr>", { desc = "Close Other Tabs" })

-- move lines
map("n", "<M-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
map("n", "<M-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
map("i", "<M-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<M-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("i", "<M-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("v", "<M-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- get filepath
function insertFullPath()
  local filepath = vim.fn.expand("%")
  vim.fn.setreg("+", filepath) -- write to clippoard
end

vim.keymap.set("n", "<leader>cp", insertFullPath, { noremap = true, silent = true, desc = "Copy filepath" })
