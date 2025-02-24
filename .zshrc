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

  alias bs='brew services'
fi

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

alias gfmm='git fetch origin master:master'
alias rpry='pry -r ./config/environment'
alias lg='export XDG_CONFIG_HOME="$HOME/.config" && lazygit'
alias yalg='export XDG_CONFIG_HOME="$HOME/.config" && yadm enter lazygit'
alias be='bundle exec'
alias hl='hledger -f $HOME/finance/main.journal -s'
alias hlw='hledger-web -f $HOME/finance/main.journal -s'

# Helix as a global editor
export EDITOR=hx

# Editor for bundle open
export BUNDLER_EDITOR=hx

# Local overrides
[[ -a "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"

# Cargo env
[[ -a "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"

# fzf and zoxide
source <(fzf --zsh)
eval "$(zoxide init zsh)"
