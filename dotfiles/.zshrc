####################
# Antigen
####################
source /usr/share/zsh-antigen/antigen.zsh

# Load oh-my-zsh
antigen use oh-my-zsh

# Load bundles from default repo (oh-my-zsh)
antigen bundle asdf
antigen bundle colored-man-pages
antigen bundle colorize
antigen bundle command-not-found
antigen bundle dotenv
antigen bundle encode64
antigen bundle extract
antigen bundle git
antigen bundle heroku
antigen bundle httpie
antigen bundle ssh-agent
antigen bundle sudo
antigen bundle tmux

# Load bundles from external repos
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# Load theme
antigen theme dracula/zsh dracula

# Apply changes
antigen apply

####################
# Variables
####################
export VISUAL=vim
export EDITOR=vim

####################
# Alias
####################
source ~/.alias

# HSTR
setopt histignorespace
export HSTR_CONFIG=hicolor
bindkey -s "\C-r" "\C-a hstr -- \C-j"

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# ASDF
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

# Start Starship shell prompt
eval "$(starship init zsh)"

# Start zoxide
eval "$(zoxide init zsh)"

# Tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  # tmux new-session -A -s default
  tmuxp load ~/.config/tmux/sessions/master.yaml -d
  tmuxp load ~/.config/tmux/sessions/zee/storefront.yaml -d
  tmuxp load ~/.config/tmux/sessions/zee/dispatch.yaml -d
  tmuxp load ~/.config/tmux/sessions/zee/stock.yaml -d
  tmuxp load ~/.config/tmux/sessions/zee/petz.yaml -d
  tmux attach -t master
fi
