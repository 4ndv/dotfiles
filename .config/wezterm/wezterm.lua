local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

local is_linux = function()
  return wezterm.target_triple:find("linux") ~= nil
end

config.window_background_opacity = 0.98

-- waiting for scaling to be fixed for that to properly work
-- if is_linux() then
--   config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
-- end

config.font = wezterm.font 'Fira Code'
-- On Linux font_size is weirdly affected by scaling
config.font_size = is_linux() and 14.0 or 18.0

config.color_scheme = 'Chalk (base16)'

local keys = {
  -- iTerm2-like scrollback clear (Windows/Linux)
  {
    key = 'k',
    mods = 'CTRL|SHIFT',
    action = act.Multiple {
      act.ClearScrollback 'ScrollbackAndViewport',
      act.SendKey { key = 'L', mods = 'CTRL' },
    },
  },
  -- iTerm2-like scrollback clear (macOS)
  {
    key = 'k',
    mods = 'SUPER',
    action = act.Multiple {
      act.ClearScrollback 'ScrollbackAndViewport',
      act.SendKey { key = 'L', mods = 'CTRL' },
    },
  },
  -- Option+Left for move backwards by a word
  {
    key = 'LeftArrow',
    mods = 'OPT',
    action = act {
      SendString = "\x1bb"
    }
  },
  -- Option+Right for move forwards by a word
  {
    key = 'RightArrow',
    mods = 'OPT',
    action = act {
      SendString = "\x1bf"
    }
  }
}

if is_linux() then
  config.keys = {
    { key = '1', mods = 'ALT', action = act.ActivateTab(0) },
    { key = '2', mods = 'ALT', action = act.ActivateTab(1) },
    { key = '3', mods = 'ALT', action = act.ActivateTab(2) },
    { key = '4', mods = 'ALT', action = act.ActivateTab(3) },
    { key = '5', mods = 'ALT', action = act.ActivateTab(4) },
    { key = '6', mods = 'ALT', action = act.ActivateTab(5) },
    { key = '7', mods = 'ALT', action = act.ActivateTab(6) },
    { key = '8', mods = 'ALT', action = act.ActivateTab(7) },
    { key = '9', mods = 'ALT', action = act.ActivateTab(-1) },
    table.unpack(keys)
  }
else
  config.keys = keys
end

return config
