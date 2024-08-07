-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------
-- Key mappings for resizing splits
vim.api.nvim_set_keymap("n", "<C-w>h", ":vertical resize -6<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w>l", ":vertical resize +6<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w>k", ":resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w>j", ":resize -2<CR>", { noremap = true, silent = true })

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>w", ":w<CR>")

keymap.set("n", "<leader>q", ":q<CR>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- lsp keymaps
keymap.set(
	"n",
	"<leader>jv",
	'<cmd>lua require"telescope.builtin".lsp_definitions({jump_type="vsplit"})<CR>',
	{ noremap = true, silent = true, desc = "Open definition in vsplit" }
)

keymap.set(
	"n",
	"<leader>jt",
	'<cmd>lua require"telescope.builtin".lsp_definitions({jump_type="tab"})<CR>',
	{ noremap = true, silent = true, desc = "Open definition in tab" }
)

keymap.set(
	"n",
	"<leader>js",
	'<cmd>lua require"telescope.builtin".lsp_definitions({jump_type="split"})<CR>',
	{ noremap = true, silent = true, desc = "Open definition in split" }
)
