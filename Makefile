memotags:
	memotags.sh *.html > tags

helptags:
	vim -e -c "helptags . | quit"

g:
	dot -T svg -o images/skk.svg skk.dot
