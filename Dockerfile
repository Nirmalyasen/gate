FROM registry.access.redhat.com/ubi8/ubi
MAINTAINER sig-platform@spinnaker.io
COPY ./gate-web/build/install/gate /opt/gate
RUN yum -y install java-11-openjdk-headless.x86_64 wget vim
RUN adduser spinnaker

RUN mkdir -p /opt/gate/plugins
USER spinnaker
CMD ["/opt/gate/bin/gate"]
