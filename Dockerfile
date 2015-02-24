FROM ubuntu:14.04
MAINTAINER Tristan Carel <tristan@cogniteev.com>

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:adiscon/v8-stable
RUN apt-get update -q
RUN apt-get install -y rsyslog

# Append rsyslog config
ADD rsyslog.conf /tmp/
RUN cat /tmp/rsyslog.conf >> /etc/rsyslog.conf && rm -f /tmp/rsyslog.conf

CMD rsyslogd -n
