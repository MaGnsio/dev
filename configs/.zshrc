export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
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
    ;;
  *)
    echo "💻 System Untracked"
    ;;
esac
