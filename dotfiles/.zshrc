####################
# Base16
#   http://chriskempson.github.io/base16
####################
#BASE16_SHELL=$HOME/.base16/shell/
#[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
#base16_solarized-dark

####################
# PATH
####################
# export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

####################
# Antigen
####################
source /usr/share/zsh-antigen/antigen.zsh

# Oh My Zsh
antigen use oh-my-zsh
antigen theme dracula/zsh dracula

# Bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle git
antigen bundle ssh-agent
antigen bundle asdf

# Syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

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

# Custom environment variables
# export RUBYOPT='-W:no-deprecated -W:no-experimental'

# Start Starship shell prompt
eval "$(starship init zsh)"

# Start zoxide
eval "$(zoxide init zsh)"

# Autostart Tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  tmux new-session -A -s default
fi
