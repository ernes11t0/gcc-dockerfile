FROM default-route-openshift-image-registry.apps.ocp.lab.com/du/du:mvrp-du-x86-5.0.326.54
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN apt-get update -y
RUN apt-get -y install gcc
RUN apt-get -y update perf
RUN gcc -o strcpy strcpy.c
