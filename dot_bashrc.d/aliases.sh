# PATH additions
export PATH="$HOME/.local/bin:$HOME/.local/share/fnm:$PATH"

# fnm (Node version manager)
if command -v fnm &>/dev/null; then
  eval "$(fnm env)"
fi

# Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias g='git'
alias gs='git status'
alias gd='git diff'
alias gl='git lg'
alias c='claude'
alias cc='cco'

# tmux auto-attach on SSH (cloud VMs only)
if [ -n "$SSH_CONNECTION" ] && [ -z "$TMUX" ]; then
  tmux new-session -A -s main
fi
