echo "1257890941|Go open source release" > caption.log
git --git-dir=`go env GOROOT`/.git --work-tree=`go env GOROOT` log --tags --reverse --date-order --simplify-by-decoration --pretty="format:%at|%D" | grep "go\|release" | grep -v "rc\|beta" >> caption.log
