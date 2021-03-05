FROM centos

MAINTAINER kaydag@yahoo.fr

RUN yum update -y
RUN yum install httpd -y

COPY ./index.html /var/www/html

EXPOSE 80

CMD apachectl -D FOREGROUND
