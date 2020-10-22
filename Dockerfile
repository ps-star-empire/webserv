FROM ubuntu:xenial

MAINTAINER pradip

RUN apt-get update && apt-get -y  install apache2

RUN apt-get -y install apache2-utils

ADD index.html /var/www/html/

EXPOSE 8000

CMD ["apache2ctl","-D","FOREGROUND"]

