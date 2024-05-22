local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

local is_linux = function()
  return wezterm.target_triple:find("linux") ~= nil
end

if is_linux() then
  config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
end

config.font = wezterm.font 'Fira Code'
-- On Linux font_size is weirdly affected by scaling
config.font_size = is_linux() and 14.0 or 18.0

config.color_scheme = 'Dark Pastel'

config.keys = {
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

return config
