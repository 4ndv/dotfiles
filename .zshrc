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
