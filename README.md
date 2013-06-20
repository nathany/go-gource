Gource for Go
=============

```console
hg log -r 4:release --style gource.style `go env GOROOT` > go.log

gource gource.conf

ffmpeg -y -r 25 -f image2pipe -vcodec ppm -i gource.ppm -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 0 -bf 0 gource.mp4
```
