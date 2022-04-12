local luasnip = require('luasnip')
local types = require('luasnip.util.types')

require('luasnip.loaders.from_vscode').lazy_load()

luasnip.config.set_config({
  history = true,
  updateevents = "TextChanged,TextChangedI",
  delete_check_events = "TextChanged",

  ext_base_prio = 300,
  ext_prio_increase = 1,
  enable_autosnippets = true,
  store_selection_keys = "<Tab>",
  ft_func = function()
    return vim.split(vim.bo.filetype, ".", true)
  end

})



