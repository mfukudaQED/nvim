local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local opts2 = { noremap = true, silent = false }

vim.g.mapleader = " " -- leader key

-- Insert mode ----------------------
map("i", "jj", "<ESC>", opts)
map("i", "<RightMouse>", "<RightMouse><ESC>", opts)

map("i", "<C-k>", "<Up>", opts)
map("i", "<C-l>", "<Right>", opts)
map("i", "<C-j>", "<Down>", opts)
map("i", "<C-h>", "<Left>", opts)


-- terminal mode ----------------------
vim.cmd('autocmd TermOpen * startinsert')
map("t", "jj", "<C-\\><C-n>", opts)


-- normal mode ----------------------
map("n", "<leader>v", ":buffers <CR>:vertical diffsplit #", opts2)
map("n", "<leader>cc", ':lua require("color-converter").cycle()<CR>', opts)
map("n", "<leader><leader>", "<C-w><C-w>", opts)

function paste_setting()
    if vim.o.paste then
        vim.api.nvim_command('set nopaste')
        vim.api.nvim_command('set mouse=a')
    else
        vim.api.nvim_command('set paste')
        vim.api.nvim_command('set mouse=')
    end
end
map("n", "<leader>p", ":lua paste_setting() <CR>", opts)

function mouse_setting()
    if vim.o.mouse=="a" then
        vim.api.nvim_command('set mouse=')
    else
        vim.api.nvim_command('set mouse=a')
    end
end
map("n", "<leader>m", ":lua mouse_setting() <CR>", opts)

-- map("n", "<C-p>", "<Plug>MarkdownPreviewToggle", opts)
map("n", "<leader>ma", ':lua require("nabla").popup()<CR>', opts) 
-- Customize with popup({border = ...})  : `single` (default), `double`, `rounded`

-- Start interactive EasyAlign in visual mode (e.g. vipga)
map("x", "ga", "<Plug>(EasyAlign)", opts)

-- Start interactive EasyAlign for a motion/text object (e.g. gaip)
map("n", "ga", "<Plug>(EasyAlign)", opts)

map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>d", ":ToggleDiag<CR>", opts)
map("n", "<leader>z", ":TZMinimalist<CR>", opts)

--> telescope mappings <--
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)
map("n", "<leader>fd", "<cmd>lua require('telescope.builtin').command_history()<CR>", opts)
map("n", "<leader>fc", "<cmd>lua require('telescope.builtin').commands()<CR>", opts)
map("n", "<leader>fk", "<cmd>lua require('telescope.builtin').keymaps()<CR>", opts)
--map("n", "<leader>f", "<cmd>lua require('telescope.builtin').()<CR>", opts)


--> barbar mappings <--
map("n", "<A-,>", ":BufferPrevious<CR>", opts)
map("n", "<A-.>", ":BufferNext<CR>", opts)
map("n", "<A-<>", ":BufferMovePrevious<CR>", opts)
map("n", "<A->>", ":BufferMoveNext<CR>", opts)
map("n", "<A-1>", ":BufferGoto 1<CR>", opts)
map("n", "<A-2>", ":BufferGoto 2<CR>", opts)
map("n", "<A-3>", ":BufferGoto 3<CR>", opts)
map("n", "<A-4>", ":BufferGoto 4<CR>", opts)
map("n", "<A-5>", ":BufferGoto 5<CR>", opts)
map("n", "<A-6>", ":BufferGoto 6<CR>", opts)
map("n", "<A-7>", ":BufferGoto 7<CR>", opts)
map("n", "<A-8>", ":BufferGoto 8<CR>", opts)
map("n", "<A-9>", ":BufferGoto 9<CR>", opts)
map("n", "<A-0>", ":BufferLast<CR>", opts)
map("n", "<A-c>", ":BufferClose<CR>", opts)
--map("n", "<C-p>", ":BufferPick<CR>", opts)
map("n", "<leader>bb", ":BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bd", ":BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bl", ":BufferOrderByLanguage<CR>", opts)
