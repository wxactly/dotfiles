
function iterm2_print_user_vars() {
  iterm2_set_user_var pwd $(pwd | sed -e "s,^$HOME,~,")
}

function notify() {
  printf "\x1b]9;%s\x7" "$*"
}
