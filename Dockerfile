FROM ubuntu:14.10
MAINTAINER Tristan Carel <tristan@cogniteev.com>

RUN add-apt-repository ppa:adiscon/v8-stable
RUN apt-get update -q
RUN apt-get install rsyslog
CMD rsyslogd -n
VOLUME /dev
VOLUME /var/log
