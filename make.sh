#!/bin/bash

source cmd_git.sh

#======================================================
# functions
#======================================================
f_0_submod_add()    { f_git_submodule_add_memo_js; }
f_0_submod_update() { f_git_submodule_update_all; }
f_0_submod_status() { f_git_submodule_status; }

f_dot() {
  dot -T svg -o images/skk.svg dot/skk.dot
  dot -T svg -o images/git.svg dot/git.dot
  dot -T svg -o images/vim-ide.svg dot/vim-ide.dot
}

f_tags() { memotags.sh 'memo:' *.html > tags; }
#======================================================
# main
#======================================================
f_fzf_default() { f_tags; }
f_fzf_main "$@"
