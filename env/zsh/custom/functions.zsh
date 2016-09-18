# needs apcalc
function \=() {
	tocalc="${@// /}"
	calc $@
}

# count lines of files in a repo
function gitCountLines() {
	git ls-files | xargs wc -l
}
