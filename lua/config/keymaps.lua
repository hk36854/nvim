-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnotic.goto_next()
end)

-- Dap
keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>", opts)
keymap.set("n", "<F6>", ":lua require'dap'.step_over()<CR>", opts)
keymap.set("n", "<F7>", ":lua require'dap'.step_into()<CR>", opts)
keymap.set("n", "<F8>", ":lua require'dap'.step_out()<CR>", opts)
keymap.set("n", "<F9>", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap.set("n", "<F10>", ":lua require'dapui'.toggle()<CR>", opts)
keymap.set("n", "<F11>", ":lua require'dapui'.eval()<CR>", opts)

keymap.set("i", "jj", "<ESC>", opts)
