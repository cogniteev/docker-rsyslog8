FROM ubuntu:14.04
MAINTAINER Tristan Carel <tristan@cogniteev.com>

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:adiscon/v8-stable
RUN apt-get update -q
RUN apt-get install -y rsyslog
CMD rsyslogd -n
VOLUME /dev
VOLUME /var/log
