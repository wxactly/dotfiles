export ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM=$HOME/.zsh
ZSH_THEME="wxactly"

export PATH="./vendor/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"

eval "$(hub alias -s)"
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export EDITOR='vim'

# just remind me to update when it's time
zstyle ':omz:update' mode reminder

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Automatically check for aliases
ZSH_ALIAS_FINDER_AUTOMATIC=true

# Which plugins would you like to load?
plugins=(
  saneopt
  vi-mode
  zsh-completions
  common-aliases
  fasd
  git
  git-extras
  brew
  composer
  extract
  alias-finder
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# User configuration

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

autoload -U compinit && compinit
autoload -U bashcompinit && bashcompinit

# http://superuser.com/a/479614/261574
set -o ignoreeof

export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin
