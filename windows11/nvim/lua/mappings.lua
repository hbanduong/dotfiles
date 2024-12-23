require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- keep yank --
map("n", "x", '"_x', { noremap = true, silent = true })
map("v", "x", '"_x', { noremap = true, silent = true })
map("n", "d", '"_d', { noremap = true, silent = true })
map("v", "d", '"_d', { noremap = true, silent = true })
map("n", "dd", '"_dd', { noremap = true, silent = true })
map("v", "dd", '"_dd', { noremap = true, silent = true })

-- nvim-dap
map("n", "<Leader>di", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>do", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map(
  "n",
  "<Leader>dd",
  "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  { desc = "Debugger set conditional breakpoint" }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- rustaceanvim
map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })

-- neotest
map("n", "<Leader>tt", function()
  require("neotest").run.run(vim.fn.expand "%")
end, { desc = "Run File (Neotest)" })
map("n", "<Leader>tr", function()
  require("neotest").run.run()
end, { desc = "Run Nearesr (Neotest)" })
map("n", "<Leader>to", function()
  require("neotest").output.open { enter = true, auto_close = true }
end, { desc = "Show Output (Neotest)" })

-- gen
map({ "n", "v" }, "<Leader>gg", ":Gen<CR>", { desc = "Show Gen AI commands" })
