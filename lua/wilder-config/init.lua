local wilder = require('wilder')

wilder.setup({
    modes = {':', '/', '?'},
    next_key = '<c-j>',
    previous_key = '<c-k>',
    accept_key = '<c-h>',
    reject_key = '<c-l>',
})

wilder.set_option('pipeline', {
  wilder.branch(
    wilder.python_file_finder_pipeline({
        -- to use ripgrep : {'rg', '--files'}
        -- to use find      : {'find', '.', '-type', 'f', '-printf', '%P\n'}
        file_command = {'fd', '-tf'}, 
        -- to use fd      : {'find', '.', '-type', 'd', '-printf', '%P\n'}
        dir_command = {'fd', '-td'},
        -- use {'cpsm_filter'} for performance, requires cpsm vim plugin
        -- found at https://github.com/nixprime/cpsm
        filters = {'fuzzy_filter', 'difflib_sorter'},
    }),
    wilder.cmdline_pipeline({
        -- sets the language to use, 'vim' and 'python' are supported
        language = 'python',
        -- 0 turns off fuzzy matching
        -- 1 turns on fuzzy matching
        -- 2 partial fuzzy matching (match does not have to begin with the same first letter)
        fuzzy = 1,
    }),
    wilder.python_search_pipeline({
      -- can be set to wilder#python_fuzzy_delimiter_pattern() for stricter fuzzy matching
      pattern = wilder.python_fuzzy_pattern(),
      -- omit to get results in the order they appear in the buffer
      sorter = wilder.python_difflib_sorter(),
      -- can be set to 're2' for performance, requires pyre2 to be installed
      -- see :h wilder#python_search() for more details
      engine = 're',
    }),
    wilder.search_pipeline()
  ),
})

-- wilder.set_option('renderer', wilder.wildmenu_renderer({
--   highlighter = wilder.basic_highlighter(),
-- }))

wilder.set_option('renderer', wilder.popupmenu_renderer(
  wilder.popupmenu_border_theme({
    highlights = {
        border = 'Normal', -- highlight to use for the border
        accent = wilder.make_hl('WilderAccent', 'Pmenu', {{a = 1}, {a = 1}, {foreground = '#f4468f'}}),
    },
    left = {' ', wilder.popupmenu_devicons()},
    right = {' ', wilder.popupmenu_scrollbar()},
    -- 'single', 'double', 'rounded' or 'solid'
    -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
    border = 'rounded',
  })
))

