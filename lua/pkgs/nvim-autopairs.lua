local cmp = require('cmp')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
require('nvim-autopairs').setup({
  enable_check_bracket_line = false
})

cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())


