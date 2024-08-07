source $HOME/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle brew
antigen bundle git
antigen bundle gitignore
antigen bundle asdf

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Must be the last bundle
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme vercel/zsh-theme

antigen apply

# Vercel theme prompt without hostname
if [[ ! -a "$HOME/.showhostname" ]]; then
  PROMPT='$logo $dir $(git_prompt)'
fi

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

alias gfmm='git fetch origin master:master'
alias bs='brew services'
alias rpry='pry -r ./config/environment'
alias rspec-changed='bundle exec rspec $(git diff --name-only "spec/**/*_spec.rb")'
alias lg='export XDG_CONFIG_HOME="$HOME/.config" && lazygit'

# Helix as a global editor
export EDITOR=hx

# Editor for bundle open
export BUNDLER_EDITOR=hx

# Local overrides
[[ -a "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"

# Cargo env
[[ -a "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"
