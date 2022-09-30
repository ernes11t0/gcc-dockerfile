FROM image-registry.openshift-image-registry.svc:5000/du/du:mvrp-du-x86-5.0.326.54
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN apt-get update -y
RUN apt-get -y install gcc
RUN apt-get -y update perf
RUN gcc -o strcpy strcpy.c