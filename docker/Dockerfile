FROM tomcat

RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/order.war /usr/local/tomcat/webapps

EXPOSE 8080