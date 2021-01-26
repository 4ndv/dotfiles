source $HOME/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle gitignore
antigen bundle asdf
antigen bundle rails
antigen bundle fzf

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Must be the last bundle
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme vercel/zsh-theme

antigen apply

# Vercel theme prompt without hostname
PROMPT='$logo $dir $(git_prompt)'

# Adding .dotbin to $PATH
export PATH=$HOME/.dotbin:$PATH

system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then
  # Наёбта (yota)
  alias nayobta='sudo sysctl -w net.inet.ip.ttl=65'
fi

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi
