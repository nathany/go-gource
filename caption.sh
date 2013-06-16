# hg tags | grep "^go"

hg log -r 3952:64e703cb307d --template "{date|localdate|hgdate}|{tags}\n" `go env GOROOT` > caption.log
hg log -r 7666:c5c62aeb6267 --template "{date|localdate|hgdate}|{tags}\n" `go env GOROOT` >> caption.log
hg log -r 9516:c1702f36df03 --template "{date|localdate|hgdate}|{tags}\n" `go env GOROOT` >> caption.log
hg log -r 12872:920e9d1ffd1f --template "{date|localdate|hgdate}|{tags}\n" `go env GOROOT` >> caption.log
hg log -r 12994:2ccfd4b451d3 --template "{date|localdate|hgdate}|{tags}\n" `go env GOROOT` >> caption.log
hg log -r 13230:5e806355a9e1 --template "{date|localdate|hgdate}|{tags}\n" `go env GOROOT` >> caption.log
hg log -r 14128:2d8bc3c94ecb --template "{date|localdate|hgdate}|{tags}\n" `go env GOROOT`  >> caption.log
hg log -r 16778:e570c2daeaca --template "{date|localdate|hgdate}|{tags}\n" `go env GOROOT` >> caption.log
hg log -r 17019:a7bd9a33067b --template "{date|localdate|hgdate}|{tags}\n" `go env GOROOT` >> caption.log

