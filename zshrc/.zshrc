# Keep at top
eval "$(devbox global shellenv)"
source $(devbox global path)/.devbox/nix/profile/default/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Do not save commands to shell history if they start with a space
setopt HIST_IGNORE_SPACE

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Disable (devbox) prefix when inside a devbox shell
DEVBOX_NO_PROMPT=true

# ---- Eza (better ls) -----
alias ls="eza --color=always --icons=always --long --no-filesize --no-permissions --no-time --no-user"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"

# ---- Bat (better cat) -----
alias cat="bat"

# --- TheFuck (autofix command errors)
eval $(thefuck --alias)

# Keep at end
eval "$(starship init zsh)"
source $(devbox global path)/.devbox/nix/profile/default/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh