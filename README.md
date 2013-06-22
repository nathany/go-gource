Gophers at Work
===============

A visualization of the Go programming language implementation over five years, from initial specification through Go 1.1.1.

The final video is on [Vimeo](https://vimeo.com/nyoungman/gource).

Title screen made with Keynote, image editing with Pixelmator, final composition with iMovie.

Music from iStockphoto®, ©Jozef Rigo II., Spirit Of The Sun + Loop E.

Generating the Video
--------------------

Using [gource](https://github.com/acaudwell/Gource) 0.40 and ffmpeg 1.2.1.

```console
hg log -r 4:release --style gource.style `go env GOROOT` > go.log

gource gource.conf

ffmpeg -y -r 25 -f image2pipe -vcodec ppm -i gource.ppm -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 0 -bf 0 gource.mp4
```

I ran into some out-of-order log entries, possibly caused by different time zones. My fix was to modify the default `gource.style` to use `localdate` and then use BBEdit to sort `go.log`.


Related
-------

You may also be interested in the [Go Code Swarm](http://www.youtube.com/watch?v=P3Ka0sMpe2k), created by Robert Hencke ([configuration](https://codereview.appspot.com/5783053)).
