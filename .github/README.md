dotfiles
--------

# Requirements:

- helix
- zsh
- Wezterm/iTerm 2
- brew (mac only)
- yadm

# Installation

```bash
yadm clone <url-here>
yadm bootstrap
```

Bootstrap will:

- Install antigen at `~/.antigen/antigen.zsh`

On macOS:

- Make iTerm 2 use config from `~/.iterm2` folder
- Install everything from `.Brewfile`
