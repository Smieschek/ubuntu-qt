FROM ubuntu:latest
MAINTAINER Manfred Smieschek <manfred.smieschek@emteria.com>

RUN apt-get update -qq
RUN apt-get -y install build-essential software-properties-common
RUN apt-get -y install fuse wget zlib1g-dev libgl1-mesa-dev
RUN add-apt-repository ppa:beineri/opt-qt59-xenial -y
RUN apt-get update -qq
RUN apt-get -y install qt59base qt59multimedia qt59tools qt59imageformats qt59script qt59graphicaleffects qt59quickcontrols qt59quickcontrols2
