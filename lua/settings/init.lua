local set = vim.opt

set.shell = "/bin/fish"
--
vim.cmd("colorscheme nightfox")

set.guifont = "Droid Sans Mono for Powerline Nerd Font Complete"

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.termguicolors = true
set.showmode = false
set.splitbelow = true
set.splitright = true
set.wrap = false
set.breakindent = true
set.scrolloff = 5
set.fileencoding = "utf-8"
set.fileencodings = "utf-8,iso-2022-jp,euc-jp,sjis"
set.fileformats = "unix,dos,mac"
set.conceallevel = 2

set.number = true
-- set.relativenumber = true
set.cursorline = true
-- set.cursorcolumn = true
set.wildmenu = true
set.completeopt = "menuone,noselect"

set.hidden = true
set.mouse = "a"
set.clipboard = "unnamedplus"

set.foldmethod = "expr"
set.foldexpr = "nvim_treesitter#foldexpr()"
set.foldlevel = 99


-- function last-position-jump --
vim.api.nvim_create_autocmd(
    {'BufReadPost'},{
    pattern = {'*'},
    callback = function()
        local ft = vim.opt_local.filetype:get()
        -- don't apply to git messages
        if (ft:match('commit') or ft:match('rebase')) then
            return
        end
        -- get position of last saved edit
        local markpos = vim.api.nvim_buf_get_mark(0,'"')
        local line = markpos[1]
        local col = markpos[2]
        -- if in range, go there
        if (line > 1) and (line <= vim.api.nvim_buf_line_count(0)) then
            vim.api.nvim_win_set_cursor(0,{line,col})
        end
    end
})

-- Set indentation to 2 spaces for HTML files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "html", "javascript", "javascriptreact", "css" },
  callback = function()
    vim.bo.shiftwidth = 2    -- Indentation width for autoindent
    vim.bo.tabstop = 2       -- Number of spaces that a <Tab> counts for
    vim.bo.softtabstop = 2   -- Number of spaces that a <Tab> counts for while editing
  end,
})
