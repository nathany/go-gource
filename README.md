Gophers at Work
===============

A visualization of the Go programming language implementation from initial specification through Go 1.5.

The video of Go's evolution through version 1.1.1 is on [Vimeo](https://vimeo.com/nyoungman/gource) and [YouTube](https://www.youtube.com/watch?v=H_xkfN1EOxc).

Title screen made with Keynote, image editing with Pixelmator, final composition with iMovie.

Music from iStockphoto®, ©Jozef Rigo II., Spirit Of The Sun + Loop E.

Generating the Video
--------------------

Using [gource](https://github.com/acaudwell/Gource) 0.43 and ffmpeg 2.7.2.

```console
git --git-dir=`go env GOROOT`/.git --work-tree=`go env GOROOT` log --pretty=format:user:%aN%n%ct --reverse --raw --encoding=UTF-8 --no-renames --since 2008-03-02 > go.log

gource gource.conf

ffmpeg -y -r 25 -f image2pipe -vcodec ppm -i gource.ppm -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 0 -bf 0 gource.mp4
```

Related
-------

You may also be interested in the [Go Code Swarm](http://www.youtube.com/watch?v=P3Ka0sMpe2k), created by Robert Hencke ([configuration](https://codereview.appspot.com/5783053)).
