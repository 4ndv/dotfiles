# Load homebrew on mac
if test -d /opt/homebrew
    /opt/homebrew/bin/brew shellenv | source
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
