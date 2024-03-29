local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

config.font = wezterm.font 'Fira Code'
config.font_size = 18.0

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
