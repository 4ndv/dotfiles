dotfiles
--------

# Requirements:

- zsh
- brew
- yadm

Optional:

- atom with shell extensions

# Installation

```bash
yadm clone <url-here>
yadm bootstrap
```

Bootstrap will:

- Set iTerm preferences folder to `~/.iterm2`
- Install antigen at `~/.antigen/antigen.zsh`
- Reinstall atom packages from the 

# Atom

Bootstrap script will reinstall packages from `.atom/packages.txt`, if `apm` command is present. To save current packages list, run `dotbin-atom-save-packages`, to restore manually - `dotbin-atom-restore-packages`
