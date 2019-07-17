FROM centos:latest

RUN yum install -y httpd

COPY ./index.html /var/www/html/index.html
COPY ./aws-ecs.png /var/www/html/aws-ecs.png			

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
