#!/bin/bash

source common.sh

#======================================================
# functions
#======================================================
f_default() {
  f_tags_memo
}

f_tags_memo() {
  f_eval "memotags.sh *.html > tags.memo"
}

f_helptags() {
  vim -e -c "helptags . | quit"
}

f_dot() {
  dot -T svg -o images/skk.svg skk.dot
  dot -T svg -o images/git.svg git.dot
  dot -T svg -o images/vim-ide.svg vim-ide.dot
}

f_help() {
	echo "tags_memo"
	echo "helptags"
	echo "dot"
	echo "help"
}

#======================================================
# main
#======================================================
func_name=${1:-"default"}
eval "f_$func_name"

