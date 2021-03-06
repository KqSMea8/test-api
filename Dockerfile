FROM python:2.7.15-stretch

MAINTAINER  "daxwang@tencent.com"

ADD test-api.tar.gz /data/install/test-api/

WORKDIR /data/install/test-api/

RUN bin/deploy.sh

CMD ["/bin/bash", "-c", "source env/bin/activate && gunicorn api_server.wsgi:application -k gevent -w 4 --access-logfile  var/log/gunicorn-access.log --error-logfile var/log/gunicorn-error.log -p var/run/test-api.pid -b 0.0.0.0:2500 $@"]

EXPOSE 80

