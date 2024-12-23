require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

--- LOCAL VAR ---
local g = vim.g
local opt = vim.opt

-- SHARE CLIPBOARD WITH SYSTEM --
-- opt.clipboard:append "unnamedplus"

-- SHARE CLIPBOARD WITH SYSTEM WSL2 --
-- g.clipboard = {
--   name = "win32yank",
--   copy = {
--     ["+"] = "win32yank.exe -i --crlf",
--     ["*"] = "win32yank.exe -i --crlf",
--   },
--   paste = {
--     ["+"] = "win32yank.exe -o --lf",
--     ["*"] = "win32yank.exe -o --lf",
--   },
--   cache_enabled = 0,
-- }

--- OPTIONS ---
-- relative line numbers --
opt.relativenumber = true

-- smart indent --
opt.tabstop = 2 -- Number of spaces for a tab
opt.shiftwidth = 2 -- Number of spaces to use for autoindent
opt.expandtab = true -- Convert tabs to spaces
opt.smartindent = true -- Automatically indent new lines

-- search --
opt.hlsearch = true -- Highlight all search results
opt.incsearch = true -- Show matches as you type
opt.ignorecase = true -- Case-insensitive search
opt.smartcase = true -- Case-sensitive if the query contains uppercase

-- disable line wrapping --
opt.wrap = false

-- hidden characters --
opt.list = true
opt.listchars = {
  tab = "▸ ", -- Highlight tabs
  trail = "·", -- Highlight trailing spaces
  eol = "↴", -- Show end-of-line
}
