#!/bin/bash

#======================================================
# functions
#======================================================
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
