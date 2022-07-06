local status_ok, cmp = pcall(require, 'cmp')
if not status_ok then
  return
end

local status_ok, _ = pcall(require, 'nvim-autopairs')
if not status_ok then
  return
end


local cmp_autopairs = require('nvim-autopairs.completion.cmp')
require('nvim-autopairs').setup({
  enable_check_bracket_line = false
})

cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())


