FROM centos
MAINTAINER d9magai

RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

RUN yum update -y && \
yum install -y --enablerepo=remi-php56,remi php && \
yum clean all

RUN curl -o /usr/local/bin/composer http://getcomposer.org/composer.phar && chmod +x /usr/local/bin/composer

