local status_ok, catppuccin = pcall(require, 'catppuccin')
local notifications = require('utils.notifications')
if not status_ok then
  notifications.plugin_error('catppuccin')
  return
end


-- flavours include dusk, latte, frappe, macchiato, mocha
local iterm_profile = os.getenv('ITERM_PROFILE')

if (string.match(iterm_profile, 'Catppuccin')) then

  if (string.match(iterm_profile, 'Frappe')) then
    vim.g.catppuccin_flavour = "frappe"
  end

  if (string.match(iterm_profile, 'Latte')) then
    vim.g.catppuccin_flavour = "latte"
  end
  
  if (string.match(iterm_profile, 'Macchiato')) then
    vim.g.catppuccin_flavour = "macchiato"
  end
  
  if (string.match(iterm_profile, 'Mocha')) then
    vim.g.catppuccin_flavour = "mocha"
  end
  
else
  vim.g.catppuccin_flavour = "mocha"
  
end



catppuccin.setup()

