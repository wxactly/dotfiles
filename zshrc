export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.zsh
ZSH_THEME="wxactly"

export EDITOR='vim'

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Oh My Zsh
plugins=(zsh-saneopt vi-mode common-aliases osx fasd git git-extras brew brew-cask composer alias-tips)

source $ZSH/oh-my-zsh.sh

# Env
export PATH="$HOME/.composer/vendor/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"

eval "$(rbenv init -)"

# http://superuser.com/a/479614/261574
set -o ignoreeof
