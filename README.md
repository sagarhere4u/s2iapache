This is an S2I Apache running.
s2i build . myapache newapache
You can then run the resulting image via:
docker run -d -p 80:80 newapache

