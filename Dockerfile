FROM centos:centos6.6 
MAINTAINER d9magai

COPY epel.repo /etc/yum.repos.d/epel.repo
COPY remi.repo /etc/yum.repos.d/remi.repo
COPY remi-php56.repo /etc/yum.repos.d/remi-php56.repo

RUN yum update -y
RUN yum install -y --enablerepo=remi-php56,remi,epel php
RUN yum clean all

RUN curl -o /usr/local/bin/composer http://getcomposer.org/composer.phar && chmod +x /usr/local/bin/composer

