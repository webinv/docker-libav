FROM debian

# Maintainer
LABEL maintainer "krzysztof@kardasz.eu"

# Update system and install required packages
ENV DEBIAN_FRONTEND noninteractive
RUN \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get -y dist-upgrade && \
    apt-get -y install libav-tools libavcodec-extra && \
    rm -rf /var/lib/apt/lists/* 