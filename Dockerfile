FROM ubuntu:xenial
MAINTAINER Manfred Smieschek <manfred.smieschek@emteria.com>

RUN apt-get update 
RUN apt-get -y dist-upgrade 
RUN apt-get -y --no-install-recommends install \
    apt-utils \
	build-essential \
	software-properties-common \
	fuse \
	wget \
	zlib1g-dev \
	libgl1-mesa-dev \
	git \
	libnss3-dev \
	libdbus-1-dev
RUN add-apt-repository ppa:beineri/opt-qt-5.14.1-xenial -y
RUN apt-get update -qq
RUN apt-get -qq clean
RUN apt-get -y install qt514base qt514multimedia qt514tools qt514imageformats qt514script qt514graphicaleffects qt514quickcontrols qt514quickcontrols2