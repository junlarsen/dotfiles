local wezterm = require 'wezterm';
local config = {}

config.color_scheme = 'Gruvbox dark, hard (base16)'
config.keys = {
  {
    key = 'LeftArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivateTabRelative(-1),
  },
  {
    key = 'RightArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivateTabRelative(1),
  }
}

return config
