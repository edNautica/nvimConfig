local map = vim.keymap.set

-- carried over from your old config
map("n", "<leader>go", vim.cmd.Ex, { desc = "Open netrw file explorer" })
map("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })

-- general quality-of-life
map("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic under cursor" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

-- move selected lines up/down in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- keep cursor centered when jumping half-pages / searching
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
