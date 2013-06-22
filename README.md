Go, Gource, Go
==============

A visualization of the Go programming language implementation over five years, from initial specification through to Go 1.1.1.

Video on [Vimeo](https://vimeo.com/nyoungman/gource).

**Generating the Video**

```console
hg log -r 4:release --style gource.style `go env GOROOT` > go.log

gource gource.conf

ffmpeg -y -r 25 -f image2pipe -vcodec ppm -i gource.ppm -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 0 -bf 0 gource.mp4
```

Title screen made with Keynote, image editing with Pixelmator, final composition with iMovie.

Music from iStockphoto®, ©Jozef Rigo II., Spirit Of The Sun
