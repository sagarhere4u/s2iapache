This is an S2I Apache running.
To use it, install S2I: https://github.com/openshift/source-to-image.
Sample invocation:
s2i build . myapache newapache
s2i build git://github.com/example/openshift-tomcat-example sarcouy/s2itomcat:8-jdk8-mvn3.2.5 tomcattest
You can then run the resulting image via:
docker run -d -p 80:80 newapache

