FROM centos:latest
MAINTAINER Zirong Huang "397864223@qq.com"
RUN yum -y install wget && wget https://nginx.org/download/nginx-1.12.2.tar.gz
RUN yum -y install gcc zlib zlib-devel openssl openssl--devel pcre pcre-devel && tar -xzvf nginx-1.12.2.tar.gz
RUN cd nginx-1.12.2 && ./configure
RUN cd nginx-1.12.2 && make && make install
COPY nginx.conf /usr/local/nginx/conf/nginx.conf
CMD ["/usr/local/nginx/sbin/nginx", "-g", "daemon off;"]
EXPOSE 8001
EXPOSE 80

