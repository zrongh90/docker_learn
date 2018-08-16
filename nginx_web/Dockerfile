FROM centos:latest
MAINTAINER Zirong Huang "397864223@qq.com"
RUN yum -y install wget && wget https://nginx.org/download/nginx-1.12.2.tar.gz && \
    yum -y install gcc zlib zlib-devel openssl openssl--devel pcre pcre-devel && tar -xzvf nginx-1.12.2.tar.gz && \
    cd nginx-1.12.2 && ./configure && \
    make && make install && cd .. && rm -f nginx-1.12.2.tar.gz && rm -rf nginx-1.12.2
COPY nginx.conf /usr/local/nginx/conf/nginx.conf
CMD ["/usr/local/nginx/sbin/nginx", "-g", "daemon off;"]
EXPOSE 8001
EXPOSE 80

