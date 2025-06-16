local ibl = require("ibl")

ibl.setup({
  scope = {
    enabled = true,  -- show_current_context と同じ
    show_start = true,  -- show_current_context_start と同じ
  },
  indent = {
    char = "┊",  -- インデントガイドの文字をスペースに
  },
})

