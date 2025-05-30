local wezterm = require 'wezterm';
local config = {}

config.window_frame = {
  font = wezterm.font { family = 'Ubuntu', weight = 'Bold' },
  font_size = 12.0,
  active_titlebar_bg = '#282828',
  inactive_titlebar_bg = '#282828',
}

config.colors = {
  tab_bar = {
    inactive_tab_edge = '#282828',
  },
}

config.window_decorations = 'RESIZE'
config.color_scheme = 'Tokyo Night'
config.window_background_opacity = 0.8
config.text_background_opacity = 0.8
config.leader = { key = 'a', mods = 'CTRL' }
config.font = wezterm.font 'JetBrainsMonoNerdFont'
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
    key = 'LeftArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize {'Left', 2},
  },
  {
    key = 'UpArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize {'Down', 2},
  },
  {
    key = 'DownArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize {'Up', 2},
  },
  {
    key = 'RightArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize {'Right', 2},
  },
  {
    key = 'h',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'j',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Down',
  },
  {
    key = 'k',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'l',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'l',
    mods = 'LEADER',
    action = wezterm.action.ShowDebugOverlay,
  },
  {
    key = 'q',
    mods = 'CTRL',
    action = wezterm.action.CloseCurrentPane {confirm = true},
  },
  {
    key = 'q',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.CloseCurrentPane {confirm = false},
  },
  {
    key = '`',
    mods = 'CTRL',
    action = wezterm.action.SendString('fg\n'),
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
