FROM ubuntu:latest
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN apt-get update -y
RUN apt-get -y install gcc
RUN apt-get -y install linux-tools-generic
RUN gcc -o strcpy strcpy.c
RUN perf record ./strcpy