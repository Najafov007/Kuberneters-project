FROM centos:latest
MAINTAINER 123nini@gmail.com
RUN yum install -y httpd \
zip\
unzip
ADD https://free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

