FROM centos:latest
MAINTAINER Zirong Huang "397864223@qq.com"
RUN yum install -y mariadb-server && yum install -y mariadb
RUN yum install -y hostname
RUN mysql_install_db && chown -R mysql:mysql /var/lib/mysql && echo "mysqld_safe --skip-grant-table &" | sh && sleep 5 && \
	mysql -u root -e 'update mysql.user set password=PASSWORD("hujnhu123")' && \
	mysqladmin -u root -phujnhu123 shutdown
CMD ['/usr/bin/mysqld_safe']
EXPOSE 3306

