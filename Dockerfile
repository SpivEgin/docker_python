#
# ActiveFlyers conductor base

# Pull base image.
FROM debian:stretch-slim

# Install Ansible.
RUN apt-get update &&\
    apt-get install -y git wget curl make dpkg-dev gcc libffi-dev libpopt0 \
    libssl-dev python2.7 python-apt python-dev rsync python python-pip python-dev:any &&\
    cd /usr/bin && \
    ln -fs python2.7 python && \
    apt-get clean &&\
   	rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

WORKDIR /opt/
