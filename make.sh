#!/bin/bash

source cmd_git.sh
source cmd_util.sh

#======================================================
# functions
#======================================================
f_01_status() { f_git_submodule_status; }
f_02_update() { f_git_submodule_update_all; }
f_03_tags()   { f_util_tags; }
f_04_init()   { f_util_add_memo_js; }

f_11_dot() {
  dot -T svg -o images/skk.svg dot/skk.dot
  dot -T svg -o images/git.svg dot/git.dot
  dot -T svg -o images/vim-ide.svg dot/vim-ide.dot
}
#======================================================
# main
#======================================================
f_fzf_default() { f_tags; }
f_fzf_main "$@"
