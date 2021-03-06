export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.zsh
ZSH_THEME="wxactly"

export PATH="./vendor/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"

export EDITOR='vim'

# Disable automatic upgrades.
DISABLE_AUTO_UPDATE=true

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Automatically check for aliases
ZSH_ALIAS_FINDER_AUTOMATIC=true

# Oh My Zsh
plugins=(
  saneopt
  vi-mode
  zsh-completions
  common-aliases
  osx
  fasd
  git
  git-extras
  brew
  composer
  wp-cli
  golang
  extract
  alias-finder
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

autoload -U compinit && compinit
autoload -U bashcompinit && bashcompinit

complete -W "`cat ~/.hcl/aliases`" hcl

# http://superuser.com/a/479614/261574
set -o ignoreeof

export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin

