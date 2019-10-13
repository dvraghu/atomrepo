# Pull base image 
From ubuntu
# Maintainer 
MAINTAINER "test@gmail.com" 
WORKDIR /opt/tomcat
RUN apt-get install -y curl
RUN curl -O http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.46/bin/apache-tomcat-8.5.46.tar.gz
RUN tar xvzf apache*.tar.gz
RUN mv apache-tomcat-8.5.46/* /opt/tomcat/.
RUN apt-get install -y java
RUN java -version

CMD ["/opt/tomcat/bin/catalina.sh", "run"]

COPY ./webapp.war /usr/local/tomcat/webapps
