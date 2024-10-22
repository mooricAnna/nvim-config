-- vim basic
vim.keymap.set({ "n", "v" }, "<C-a>", "^")
vim.keymap.set({ "n", "v" }, "<C-e>", "$")

vim.keymap.set("i", "jj", "<esc>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>u", ":u<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>wq", ":wq<CR>")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set({ "n", "v" }, "<tab>", ">>")
vim.keymap.set({ "n", "v" }, "<S-tab>", "<<")
---

-- lazy nvim
vim.keymap.set("n", "<leader>lz", ":Lazy<CR>")
---

-- nvim tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
  vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory")) 
end

-- pass to setup along with your other options
require("nvim-tree").setup {
  ---
  on_attach = my_on_attach,
  ---
}
---

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
---

-- lsp signature
vim.keymap.set({ 'n' }, '<C-k>', function()
    require('lsp_signature').toggle_float_win() 
end, { silent = true, noremap = true, desc = 'toggle signature' })

vim.keymap.set({ 'n' }, '<Leader>a', function()
    vim.lsp.buf.signature_help()
end, { silent = true, noremap = true, desc = 'toggle signature' })
---

-- symbols outline
vim.keymap.set("n", "<leader>t", ":SymbolsOutline<CR>")
---

-- Bufferline
vim.keymap.set("n", "<leader>1", ":lua require(\"bufferline\").go_to(1, true)<cr>")
vim.keymap.set("n", "<leader>2", ":lua require(\"bufferline\").go_to(2, true)<cr>")
vim.keymap.set("n", "<leader>3", ":lua require(\"bufferline\").go_to(3, true)<cr>")
vim.keymap.set("n", "<leader>4", ":lua require(\"bufferline\").go_to(4, true)<cr>")
vim.keymap.set("n", "<leader>5", ":lua require(\"bufferline\").go_to(5, true)<cr>")
vim.keymap.set("n", "<leader>6", ":lua require(\"bufferline\").go_to(6, true)<cr>")
vim.keymap.set("n", "<leader>7", ":lua require(\"bufferline\").go_to(7, true)<cr>")
vim.keymap.set("n", "<leader>8", ":lua require(\"bufferline\").go_to(8, true)<cr>")
vim.keymap.set("n", "<leader>9", ":lua require(\"bufferline\").go_to(9, true)<cr>")
vim.keymap.set("n", "<leader>$", ":lua require(\"bufferline\").go_to(-1, true)<cr>")

vim.keymap.set("n", "]b", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "}", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "[b", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "{", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", ".b", ":BufferLineMoveNext<CR>")
vim.keymap.set("n", ">", ":BufferLineMoveNext<CR>")
vim.keymap.set("n", ",b", ":BufferLineMovePrev<CR>")
vim.keymap.set("n", "<", ":BufferLineMovePrev<CR>")

vim.keymap.set("n", "<leader>p", ":BufferLinePick<CR>")
vim.keymap.set("n", "<leader>c", ":BufferLinePickClose<CR>")
---
