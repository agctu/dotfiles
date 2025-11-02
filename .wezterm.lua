-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.enable_scroll_bar = true
config.default_prog = { 'bash' }
config.default_cwd = "D:\\"
config.window_decorations = 'RESIZE'

config.keys = {
  { key = '-', mods = 'ALT', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
  { key = '\\', mods = 'ALT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'j', mods = 'ALT', action = wezterm.action.ActivatePaneDirection('Down') },
  { key = 'k', mods = 'ALT', action = wezterm.action.ActivatePaneDirection('Up') },
  { key = 'h', mods = 'ALT', action = wezterm.action.ActivatePaneDirection('Left') },
  { key = 'l', mods = 'ALT', action = wezterm.action.ActivatePaneDirection('Right') },
  { key = 't', mods = 'ALT', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  { key = 'q', mods = 'ALT', action = wezterm.action.CloseCurrentPane { confirm = true } },
  { key = 'd', mods = 'ALT', action = wezterm.action.ShowDebugOverlay },
  { key = 'p', mods = 'ALT', action = wezterm.action.PasteFrom 'Clipboard' },
}
-- This is where you actually apply your config choices.

return config
