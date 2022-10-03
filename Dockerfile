FROM ubuntu:latest
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN add-apt-repository "http://security.ubuntu.com/ubuntu/ $(lsb_release -sc)-security restricted universe multiverse main"
RUN add-apt-repository "http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc)-proposed restricted universe multiverse main"
RUN apt-get update -y
RUN apt-get -y install gcc
RUN apt-get -y install linux-tools-generic
RUN apt-get -y install linux-tools-4.18.0-305.40.2.el8_4.x86_64
RUN gcc -o strcpy strcpy.c
RUN perf record ./strcpy