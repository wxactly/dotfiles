# Default escape key <ESC> for insert mode
ZVM_VI_INSERT_ESCAPE_BINDKEY='^['

# The plugin will auto execute this zvm_after_init function
function zvm_after_init() {
  zvm_bindkey viins 'jk' zvm_exit_insert_mode
  zvm_bindkey viins 'kj' zvm_exit_insert_mode
  zvm_bindkey vicmd 'Y' vi-yank-eol
  zvm_bindkey vicmd 'm' vi-delete
  zvm_bindkey vicmd 'M' vi-kill-eol
}

