FROM centos:latest
MAINTAINER moazzamech@gmail.com
RUN yum install -y httpd \
	zip\
	unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/covido.zip /var/www/html
WORKDIR /var/www/html
RUN unzip covido.zip
RUN cp -rvf covido-html/* .
RUN rm -rf covido.zip covido-html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
