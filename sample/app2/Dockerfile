FROM ubuntu
MAINTAINER Cogniteev <tech@cogniteev.com>

ENV NAME=app2

ADD rsyslog.conf /etc/rsyslog.d/$NAME/
ADD app /tmp/

RUN mkdir -p /var/log/$NAME

VOLUME /etc/rsyslog.d/$NAME
VOLUME /var/log/$NAME

CMD /tmp/app
