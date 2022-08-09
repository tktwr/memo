#!/bin/bash

#======================================================
# functions
#======================================================
f_tags_memo() {
  memotags.sh *.html > tags.memo
}

f_dot() {
  dot -T svg -o images/skk.svg dot/skk.dot
  dot -T svg -o images/git.svg dot/git.dot
  dot -T svg -o images/vim-ide.svg dot/vim-ide.dot
}

#------------------------------------------------------
f_help() {
	echo "tags_memo"
	echo "dot"
	echo "help"
}

f_default() {
  f_tags_memo
}

#======================================================
# main
#======================================================
func_name=${1:-"default"}
eval "f_$func_name"

