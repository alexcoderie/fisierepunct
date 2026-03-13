# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
[ -f "$HOME/.zshrc.local" ] && source "$HOME/.zshrc.local"

plug "$HOME/.config/zsh/local_plugins/command-not-found"
plug "$HOME/.config/zsh/local_plugins/my-prompt"

plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
# plug "zap-zsh/zap-prompt"


alias nvimrc='nvim ~/.config/nvim'

bindkey '^ ' autosuggest-accept
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

# Load and initialise completion system
autoload -Uz compinit
compinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
