#!/bin/bash

source cmd_funcs.sh

#======================================================
# functions
#======================================================
f_11_dot() {
  dot -T svg -o images/skk.svg dot/skk.dot
  dot -T svg -o images/git.svg dot/git.dot
  dot -T svg -o images/vim-ide.svg dot/vim-ide.dot
}
#======================================================
# main
#======================================================
f_fzf_default() { f_memo_tags; }
f_fzf_main "$@"
