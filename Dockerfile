FROM tomcat:8.0

MAINTAINER "Leon Chou <bleepbloopsify@gmail.com>"


ADD settings.xml /usr/local/tomcat/bin/con/
ADD tomcat-users.xml /usr/local/tomcat/bin/conf/
