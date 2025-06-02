vim.g.mapleader = "<Space>"

vim.keymap.set("n", "<Up>", ":echoe 'Arrow keys disabled!'<CR>")
vim.keymap.set("n", "<Down>", ":echoe 'Arrow keys disabled!'<CR>")
vim.keymap.set("n", "<Left>", ":echoe 'Arrow keys disabled!'<CR>")
vim.keymap.set("n", "<Right>", ":echoe 'Arrow keys disabled!'<CR>")
vim.keymap.set("i", "<Up>", "<C-o>:echoe 'Arrow keys disabled!'<CR>")
vim.keymap.set("i", "<Down>", "<C-o>:echoe 'Arrow keys disabled!'<CR>")
vim.keymap.set("i", "<Left>", "<C-o>:echoe 'Arrow keys disabled!'<CR>")
vim.keymap.set("i", "<Right>", "<C-o>:echoe 'Arrow keys disabled!'<CR>")
vim.keymap.set("v", "<Up>", ":<C-u>echoe 'Arrow keys disabled!'<CR>")
vim.keymap.set("v", "<Down>", ":<C-u>echoe 'Arrow keys disabled!'<CR>")
vim.keymap.set("v", "<Left>", ":<C-u>echoe 'Arrow keys disabled!'<CR>")
vim.keymap.set("v", "<Right>", ":<C-u>echoe 'Arrow keys disabled!'<CR>")
