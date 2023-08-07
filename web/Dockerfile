FROM centos:7.5.1804

RUN yum -y swap fakesystemd systemd &&  \
    yum clean all &&  \
    yum -y update &&  \
    yum clean all

RUN yum -y install less

RUN yum -y install epel-release
RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm

RUN yum -y install httpd
RUN yum -y install --enablerepo=remi,remi-php82 -y php php-cli php-common php-devel php-pecl-apcu php-pecl-memcache
RUN yum -y install zip unzip

RUN yum -y install make
RUN yum -y install php82-php-pecl-zip.x86_64

COPY ./php.conf /etc/httpd/conf.d/php.conf
COPY ./40-memcache.ini /etc/php.d/40-memcache.ini
COPY ./php.ini /etc/php.ini


RUN systemctl enable httpd
CMD ["/sbin/init"]

WORKDIR /var/www/html
