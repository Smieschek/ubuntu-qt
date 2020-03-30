FROM ubuntu:xenial
MAINTAINER Manfred Smieschek <manfred.smieschek@emteria.com>

RUN apt-get update -qq
RUN apt-get -y install build-essential software-properties-common
RUN apt-get -y install fuse wget zlib1g-dev libgl1-mesa-dev
RUN add-apt-repository ppa:beineri/opt-qt-5.14.1-xenial -y
RUN apt-get update -qq
RUN apt-get -y install qt514base qt514multimedia qt514tools qt514imageformats qt514script qt514graphicaleffects qt514quickcontrols qt514quickcontrols2