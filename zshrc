export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.zsh
ZSH_THEME="wxactly"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:./vendor/bin"

eval "$(rbenv init -)"

export EDITOR='vim'

# Disable automatic upgrades.
DISABLE_AUTO_UPDATE=true

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Expand command to get best alias.
export ZSH_PLUGINS_ALIAS_TIPS_EXPAND=1

# Oh My Zsh
plugins=(
  zsh-saneopt
  vi-mode
  zsh-completions
  common-aliases
  osx
  fasd
  git
  git-extras
  brew
  brew-cask
  composer
  extract
  alias-tips
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

autoload -U compinit && compinit

# http://superuser.com/a/479614/261574
set -o ignoreeof

