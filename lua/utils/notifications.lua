local M = {}


M.plugin_error = function(plugin_name) 
  vim.notify('could not load ' .. plugin_name, 'error', {
    title = 'Plugin Error'
  })
end



return M

