FROM centos:centos6.6 
MAINTAINER d9magai

COPY epel.repo /etc/yum.repos.d/epel.repo
COPY remi.repo /etc/yum.repos.d/remi.repo
COPY remi-php56.repo /etc/yum.repos.d/remi-php56.repo

