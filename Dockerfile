FROM centos

LABEL io.k8s.description="Platform for building Apache Web Service" \
      io.k8s.display-name="Apache" \
      io.openshift.expose-services="80:http" \
      io.openshift.tags="builder,apache"

RUN yum update -y

RUN yum install httpd -y

EXPOSE 80
