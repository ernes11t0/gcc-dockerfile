FROM registry.access.redhat.com/ubi8/ubi:8.0
MAINTAINER Red Hat Training <training@redhat.com>
# Install the Java runtime, create a user for running the app, and set permissions
RUN yum -y update
RUN yum -y --disableplugin=subscription-manager install perf
RUN mkdir -p /opt/app-root/bin
COPY . /opt/app-root/bin/
RUN chgrp -R 0 /opt/app-root && \
chmod -R g=u /opt/app-root
EXPOSE 8080
USER 1001
# Run the fat JAR
RUN gcc -o strcpy strcpy.c
RUN perf record ./ strcpy