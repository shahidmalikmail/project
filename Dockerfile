FROM centos:latest
MAINTAINER sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page257/go-tours.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip go-tours.zip
RUN cp -rvf go-tours/* .
RUN rm -rf go-tours.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
