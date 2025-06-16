require('osc52').setup{
  max_length = 0,  -- no limit on copy size
}

-- Automatic copy to local clipboard after yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    -- copy the yanked text to OSC52 clipboard
    require('osc52').copy(vim.fn.getreg('"'))
  end,
})
