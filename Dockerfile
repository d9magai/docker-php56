FROM centos
MAINTAINER d9magai

COPY epel.repo /etc/yum.repos.d/epel.repo
COPY remi.repo /etc/yum.repos.d/remi.repo

RUN yum update -y
RUN yum install -y --enablerepo=remi-php56,remi php
RUN yum clean all

RUN curl -o /usr/local/bin/composer http://getcomposer.org/composer.phar && chmod +x /usr/local/bin/composer

