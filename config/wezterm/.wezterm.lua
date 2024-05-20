local wezterm = require 'wezterm';
local config = {}

config.color_scheme = 'Gruvbox dark, hard (base16)'
config.keys = {
  {
    key = 'LeftArrow',
    mods = 'CTRL',
    action = wezterm.action.ActivateTabRelative(-1),
  },
  {
    key = 'RightArrow',
    mods = 'CTRL',
    action = wezterm.action.ActivateTabRelative(1),
  },
  {
    key = 'm',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical {domain = "CurrentPaneDomain"},
  },
  {
    key = 'n',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitHorizontal {domain = "CurrentPaneDomain"},
  }
}

for i = 1, 9 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'CTRL',
    action = wezterm.action.ActivateTab(i - 1),
  })
end

return config
