alias git=hub
alias sourcezshrc="source ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias restart="brew services restart"
alias rmt="rmtrash"
alias n="notify"

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