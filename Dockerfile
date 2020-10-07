FROM openshift/httpd:7.7
MAINTAINER Henrik Loevborg <henrik@redhat.com>
LABEL description="A basic Apache container on OpenShift"
RUN echo "Hello from Dockerfile" > /usr/share/httpd/noindex/index.html EXPOSE 80
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
