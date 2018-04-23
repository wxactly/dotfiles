unalias cgr

alias git=hub
alias hcl="RBENV_VERSION=2.0.0-p648 hcl"

alias vimrc="vim ~/.vimrc"
alias rmt="rmtrash"
alias n="notify"
alias rs="restart"
alias ss="stopstart"

function restart() {
  for service in "$@"
  do
    brew services restart "$service"
  done
}

function stopstart() {
  brew services stop $1
  brew services start $2
}

function blackfire-enable() {
  mv /usr/local/etc/php/5.6/conf.d/ext-blackfire.ini.bak /usr/local/etc/php/5.6/conf.d/ext-blackfire.ini
  mv /usr/local/etc/php/5.6/conf.d/ext-xdebug.ini /usr/local/etc/php/5.6/conf.d/ext-xdebug.ini.bak
  restart php56
}

function blackfire-disable() {
  mv /usr/local/etc/php/5.6/conf.d/ext-blackfire.ini /usr/local/etc/php/5.6/conf.d/ext-blackfire.ini.bak
  mv /usr/local/etc/php/5.6/conf.d/ext-xdebug.ini.bak /usr/local/etc/php/5.6/conf.d/ext-xdebug.ini
  restart php56
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
alias druli='drush user-login -l'
alias drev='drush php-eval'
alias drmi='drush mi --all'
alias drmr='drush mr --all'
alias dreu='drush entity-updates'

#Terminus aliases.
alias tdr='terminus drush'
alias twp='terminus wp'
alias tcc='terminus env:clear-cache'
alias tdv='terminus dashboard:view'
alias tww='terminus workflow:watch'
alias tbg='terminus backup:get --element=database'
alias tbc='terminus backup:create --element=database'

