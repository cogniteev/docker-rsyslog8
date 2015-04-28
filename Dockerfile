FROM ubuntu:14.04
MAINTAINER Cogniteev <tech@cognitee.com>

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:adiscon/v8-stable
RUN apt-get update -q
RUN apt-get install -y rsyslog

# Copy config files of dependant images
ONBUILD ADD rsyslog.d/* /etc/rsyslog.d/

CMD rsyslogd -n
