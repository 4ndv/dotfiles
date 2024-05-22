dotfiles
--------

# Requirements:

- rust
- zellij
- helix
- zsh
- Wezterm
- brew (mac only)
- yadm

# MacOS-related dependencies and configs

- brew

# Linux-related dependencies and configs

- kitty
- gnome
- gnome "Forge" extension

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

# Manual steps after installation

## Linux

Run `.gnome-dotfiles/load` to load gnome settings, and `.gnome-dotfiles/dump` to update them afterwards if needed
