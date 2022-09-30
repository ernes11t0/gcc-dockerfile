FROM ubuntu:latest
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN apt-get update -y
RUN apt-get -y install gcc
RUN apt -y install linux-tools-`uname -r`
RUN gcc -o strcpy strcpy.c