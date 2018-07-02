FROM centos:latest
MAINTAINER Zirong Huang "397864223@qq.com"
RUN yum install -y php php-cmath php-mysql httpd php-bcmath php-mbstring&&\
    mkdir /var/www/html/zabbix
COPY php /var/www/html/zabbix
COPY update_info.sh /tmp
COPY php.ini /etc
#CMD ["/usr/sbin/apachectl", "-DFOREGROUD", "-e debug"]
CMD ["/bin/bash", "/tmp/update_info.sh"]
EXPOSE 80

