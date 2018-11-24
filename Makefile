.PHONY: tags tags.memo

tags.memo:
	memotags.sh *.html > tags.memo

helptags:
	vim -e -c "helptags . | quit"

g:
	dot -T svg -o images/skk.svg skk.dot
	dot -T svg -o images/git.svg git.dot
