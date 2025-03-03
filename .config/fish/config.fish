set -U fish_greeting
set -l os (uname)

# Set Ctrl-C to previous behavior
bind -a ctrl-c cancel-commandline

# Set editors
set -gx EDITOR hx
set -gx BUNDLE_EDITOR hx

# Load homebrew on mac
if test "$os" = Darwin && test -d /opt/homebrew
    /opt/homebrew/bin/brew shellenv | source
end

# Add cargo to path
fish_add_path ~/.cargo/bin

# Add .local/bin to path
fish_add_path ~/.local/bin

# Init asdf
setup_asdf

# Init zoxide
zoxide init fish | source

if status is-interactive
    abbr --add j just
    abbr --add lg lazygit
    abbr --add yalg yadm enter lazygit

    abbr --add be bundle exec
    abbr --add hl hledger -f $HOME/finance/main.journal -s
    abbr --add hlw hledger-web -f $HOME/finance/main.journal -s

    # mac-specific abbrs
    if test "$os" = Darwin
        abbr --add bs brew services
    end

    if [ "$TERM" = alacritty ]
        eval (zellij setup --generate-auto-start fish | string collect)
    end
end
