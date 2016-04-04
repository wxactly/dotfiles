# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Path to oh-my-zsh custom directory.
ZSH_CUSTOM=$HOME/.zsh/custom

# Custom theme.
ZSH_THEME="wxactly"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Plugins
plugins=(zsh-saneopt vi-mode common-aliases osx git git-extras brew brew-cask composer alias-tips)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.composer/vendor/bin"

# Use Homebrew's directories rather than ~/.rbenv
export RBENV_ROOT=/usr/local/var/rbenv

# Preferred editor
export EDITOR='vim'

#eval "$(fasd --init auto)"

# vi-mode key mappings
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M viins 'kj' vi-cmd-mode
bindkey -M vicmd 'Y' vi-yank-eol
bindkey "^R" history-incremental-search-backward

# http://superuser.com/a/479614/261574
set -o ignoreeof

# Aliases
alias sourcezshrc="source ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias restart="brew services restart"
alias rmt="rmtrash"
alias n="notify"

# Alias hub as git
eval "$(hub alias -s)"

# Drupal and Drush aliases.
# https://github.com/nuvoleweb/drush_alias
alias drsp='cp sites/default/default.settings.php sites/default/settings.php'
alias drcc='time drush cache-clear all; notify cache-clear complete'
alias drrr='drush registry-rebuild'
alias drdb='drush updb'
alias drdu='drush sql-dump --ordered-dump --result-file=dump.sql'
alias dren='drush pm-enable -y'
alias drdis='drush pm-disable -y'
alias drun='drush pm-uninstall'
alias drf='drush features'
alias drfd='drush features-diff'
alias drfua='drush -y features-update-all'
alias drfu='drush -y features-update'
alias drfra='drush -y features-revert-all'
alias drfr='drush -y features-revert'
alias dr='drush'
alias dml='modlist'
alias druli='drush user-login -l'

function notify() {
  printf "\x1b]9;%s\x7" "$*"
}

function iterm2_print_user_vars() {
  iterm2_set_user_var pwd $(pwd | sed -e "s,^$HOME,~,")
}

# iTerm2 shell integration
source "${HOME}/.zsh/iterm2_shell_integration.zsh"
