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
- yazi
- fzf
- zoxide
- fd
- ripgrep
- serpl

# MacOS-related dependencies and configs

- brew

# Linux-related dependencies and configs

- hyprland
- hyprpaper
- waybar
- wofi
- ttf-firacode-nerd

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

# Linux-specific installation steps

- Add monitors config at `~/.config/hypr/monitors.conf`
- Add wallpaper config at `~/.config/hypr/hyprpaper.conf`
