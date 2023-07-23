FROM ubuntu:latest

# Instalar Maven, Git, Tomcat e MySQL Client
RUN apt-get update && apt-get install -y maven git tomcat9 mysql-client wget

# Configurar o Tomcat
ENV CATALINA_HOME /usr/share/tomcat9
ENV CATALINA_BASE /var/lib/tomcat9
ENV CATALINA_PID /var/run/tomcat9.pid
ENV CATALINA_OPTS "-Xms512M -Xmx1024M"

# Instalar o Spring Boot CLI
RUN curl -sL https://github.com/spring-projects/spring-boot/raw/main/install/install.sh | bash


