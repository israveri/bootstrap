####################
# Antigen
####################
source /usr/share/zsh-antigen/antigen.zsh
antigen init ~/.antigenrc

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

# Autostart Tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  tmux new-session -A -s default
fi
