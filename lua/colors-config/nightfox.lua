local nightfox = require('nightfox')

nightfox.setup({
    options = {
        styles = {
            comments = 'italic',
            --functions = 'italic',
        },
    }
})

vim.cmd('colorscheme nightfox')
