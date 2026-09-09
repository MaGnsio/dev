export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell-two-line"
zstyle ':omz:update' mode auto
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

export EDITOR=nvim
export VISUAL=nvim

case "$(uname -s)" in
  Darwin)
    echo "🍎 macOS | Environment Initialized"
    export MANPATH="/usr/local/man:$MANPATH"
    . "$HOME/.local/bin/env"
    ### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
    export PATH="/Users/mhefni/.rd/bin:$PATH"
    ### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
    export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
    export PATH=$PATH:$HOME/go/bin
    export PATH=/usr/local/include/bits:$PATH
    export CPLUS_INCLUDE_PATH=/usr/local/include:$CPLUS_INCLUDE_PATH
    export XDG_CONFIG_HOME="$HOME/.config"
    export HOMEBREW_NO_AUTO_UPDATE=1
    ;;
  Linux)
    echo "🐧 Linux | Environment Initialized"

    : "${OMARCHY_PATH:=/usr/share/omarchy}"
    export OMARCHY_PATH

    export EDITOR="${EDITOR:-omarchy-launch-editor --inline}"
    export SUDO_EDITOR="$EDITOR"
    export VISUAL="$EDITOR"
    export BROWSER="${BROWSER:-omarchy-launch-browser}"
    export BAT_THEME=ansi
    export MANROFFOPT="-c"
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"

    case ":$PATH:" in
      *":$HOME/.local/bin:"*) ;;
      *) export PATH="$PATH:$HOME/.local/bin" ;;
    esac

    if command -v eza &> /dev/null; then
      alias ls='eza -lh --group-directories-first --icons=auto'
      alias lsa='ls -a'
      alias lt='eza --tree --level=2 --long --icons --git'
      alias lta='lt -a'
    fi

    alias a='omarchy-agent --inline'
    alias c='opencode --auto'
    alias cx='printf "\033[2J\033[3J\033[H" && claude --permission-mode auto'
    alias cy='codex --approve-for-me'
    alias t='tmux attach || tmux new -s Work'
    alias g='git'
    alias gcm='git commit -m'
    alias gcam='git commit -a -m'
    n() { if [ "$#" -eq 0 ]; then command nvim . ; else command nvim "$@"; fi; }

    if command -v mise &> /dev/null; then
      eval "$(mise activate zsh)"
    fi

    if command -v zoxide &> /dev/null; then
      eval "$(zoxide init zsh)"
    fi

    if command -v fzf &> /dev/null; then
      source <(fzf --zsh)
    fi
    ;;
  *)
    echo "💻 System Untracked"
    ;;
esac

. "$HOME/.local/bin/env"
