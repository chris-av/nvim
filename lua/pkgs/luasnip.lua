local luasnip = require('luasnip')
local types = require('luasnip.util.types')


luasnip.config.set_config({
  history = true,
  updateevents = "TextChanged,TextChangedI",
  delete_check_events = "TextChanged",

  ext_opts = {
    [types.choiceNode] = {
      active = {
        virtual_text = { { "choiceNode", "Comment" } }
      }
    }
  },

  ext_base_prio = 300,
  ext_prio_increase = 1,
  enable_autosnippets = true,
  store_selection_keys = "<Tab>",
  ft_func = function()
    return vim.split(vim.bo.filetype, ".", true)
  end

})



