alias git=hub
alias hcl="RBENV_VERSION=2.0.0-p648 hcl"

alias vimrc="vim ~/.vimrc"
alias rmt="rmtrash"
alias n="notify"

function restart() {
  if [ "$1" = "sites" ]; then
    restart mysql memcached redis httpd22
  else
    for service in "$@"
    do
      brew services restart "$service"
    done
  fi
}

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
alias drcr='time drush cache-rebuild; notify cache-clear complete'
alias drev='drush php-eval'

