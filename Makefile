memotags:
	./memotags.sh *.html > tags

helptags:
	vim -e -c "helptags . | quit"

