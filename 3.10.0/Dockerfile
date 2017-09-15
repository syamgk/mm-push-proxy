FROM registry.centos.org/centos/centos:7

RUN yum -y update && \
    yum -y install wget

ENV MMPP_VERSION 3.10
ENV MMPP_VERSION_MINOR .0

RUN cd /opt && \
    wget https://github.com/mattermost/mattermost-push-proxy/releases/download/v${MMPP_VERSION}/mattermost-push-proxy-${MMPP_VERSION}${MMPP_VERSION_MINOR}.tar.gz && \
    tar xvf mattermost-push-proxy-${MMPP_VERSION}${MMPP_VERSION_MINOR}.tar.gz

COPY mattermost-push-proxy.json /opt/mattermost-push-proxy/

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

