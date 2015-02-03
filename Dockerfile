FROM centos
MAINTAINER d9magai

RUN yum update -y && \
yum install -y epel-release && \
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

RUN yum install -y --enablerepo=remi-php56,remi php && \
yum clean all

RUN curl -o /usr/local/bin/composer http://getcomposer.org/composer.phar && chmod +x /usr/local/bin/composer

ENV PATH /usr/local/bin/:$PATH

