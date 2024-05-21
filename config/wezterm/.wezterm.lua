local wezterm = require 'wezterm';
local config = {}

config.color_scheme = 'Gruvbox dark, hard (base16)'
config.leader = { key = 'a', mods = 'CTRL' }
config.font = wezterm.font 'JetBrains Mono'
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
  },
  {
    key = 'h',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize {'Left', 2},
  },
  {
    key = 'j',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize {'Down', 2},
  },
  {
    key = 'k',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize {'Up', 2},
  },
  {
    key = 'l',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize {'Right', 2},
  },
  {
    key = 'l',
    mods = 'LEADER',
    action = wezterm.action.ShowDebugOverlay,
  },
  {
    key = 'w',
    mods = 'CTRL',
    action = wezterm.action.CloseCurrentPane {confirm = true},
  },
  {
    key = 'w',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.CloseCurrentPane {confirm = false},
  },
}

for i = 1, 9 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'CTRL',
    action = wezterm.action.ActivateTab(i - 1),
  })
end

return config
