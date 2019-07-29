unalias cgr

alias git=hub
alias gmod="git merge origin/develop"
alias hcl="RBENV_VERSION=2.0.0-p648 hcl"
alias composer="COMPOSER_MEMORY_LIMIT=-1 composer"

alias vimrc="vim ~/.vimrc"
alias rmt="rmtrash"
alias n="notify"
alias rs="restart"

function restart() {
  for service in "$@"
  do
    brew services restart "$service"
  done
}

function blackfire-enable() {
  mv /usr/local/etc/php/5.6/conf.d/ext-blackfire.ini.bak /usr/local/etc/php/5.6/conf.d/ext-blackfire.ini
  echo "Blackfire is enabled. Disable xdebug now:"
  echo "vim /usr/local/etc/php/5.6/php.ini"
  echo "brew services restart php@5.6"
}

function blackfire-disable() {
  mv /usr/local/etc/php/5.6/conf.d/ext-blackfire.ini /usr/local/etc/php/5.6/conf.d/ext-blackfire.ini.bak
  echo "Blackfire is disabled. Enable xdebug now:"
  echo "vim /usr/local/etc/php/5.6/php.ini"
  echo "brew services restart php@5.6"
}

# Drupal and Drush aliases.
alias dr='drush'
alias drcr='drush cache-rebuild; notify cache-rebuild complete'
alias drcc='drush cache-clear all; notify cache-clear complete'
alias drrr='drush registry-rebuild'
alias drdb='drush updb'
alias dren='drush pm-enable -y'
alias drun='drush pm-uninstall'
alias drf='drush features'
alias drfd='drush features-diff'
alias drfua='drush -y features-update-all'
alias drfu='drush -y features-update'
alias drfra='drush -y features-revert-all'
alias drfr='drush -y features-revert'
alias druli='drush user-login'
alias drev='drush php-eval'
alias drmi='drush mi --all'
alias drmr='drush mr --all'
alias dreu='drush entity-updates'

#Terminus aliases.
alias terminus-develop='TERMINUS_ENV=develop terminus'
alias terminus-test='TERMINUS_ENV=test terminus'
alias terminus-live='TERMINUS_ENV=live terminus'

alias tdr='terminus drush'
alias tddr='terminus-develop drush'
alias ttdr='terminus-test drush'
alias tldr='terminus-live drush'

alias twp='terminus wp'
alias tdwp='terminus-develop wp'
alias ttwp='terminus-test wp'
alias tlwp='terminus-live wp'

alias tcc='terminus env:clear-cache'
alias tdcc='terminus-develop env:clear-cache'
alias ttcc='terminus-test env:clear-cache'
alias tlcc='terminus-live env:clear-cache'

alias tdv='terminus dashboard:view'
alias tww='terminus workflow:watch'

alias tbg='terminus backup:get --element=database'

function tbc() {
  terminus backup:create --element=database $@
  terminus backup:get --element=database $@
}

