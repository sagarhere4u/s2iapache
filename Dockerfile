FROM centos

LABEL io.k8s.description="Platform for building Apache Web Service" \
      io.k8s.display-name="Apache" \
      io.openshift.expose-services="80:http" \
      io.openshift.tags="builder,apache"

RUN yum update -y
RUN yum install httpd -y
RUN setcap CAP_NET_BIND_SERVICE=+eip /usr/sbin/httpd
EXPOSE 80

RUN ln -s /tmp/index.html /var/www/html/index.html

RUN chmod -R 777 /etc/httpd/logs /run/httpd

USER apache

RUN echo Sample > /tmp/index.html
RUN chmod 777 /tmp/index.html
CMD $STI_SCRIPTS_PATH/usage
