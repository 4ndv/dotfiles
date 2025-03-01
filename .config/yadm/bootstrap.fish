# Bootstrap file for fish-related stuff

echo "[fish] Setting Lynx theme"
fish_config theme save Lynx

echo "[fish] Installing fisher and updating plugins"
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher update
