#!/bin/bash

#======================================================
# functions
#======================================================
f_add_submodule() {
  mkdir -p third_party
  git submodule add https://github.com/tktwr/memo_js.git third_party/memo_js
}
f_git_submodule_update() {
  git submodule update --init --recursive --remote --rebase
}
f_git_submodule_status() {
  git submodule status --recursive
  git submodule summary
}
f_tags() {
  memotags.sh 'memo:' *.html > tags
}

f_dot() {
  dot -T svg -o images/skk.svg dot/skk.dot
  dot -T svg -o images/git.svg dot/git.dot
  dot -T svg -o images/vim-ide.svg dot/vim-ide.dot
}

#======================================================
# main
#======================================================
f_fzf_default() { f_tags; }
f_fzf_main "$@"
