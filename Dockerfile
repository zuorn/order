FROM tomcat

ADD target/order.war /

RUN cd / \
    && mv order.war ROOT.war \
    && rm -rf /usr/local/tomcat/webapps/* \
    && cp ROOT.war /usr/local/tomcat/webapps \
    && rm -rf ROOT.war \
    && sh /usr/local/tomcat/bin/startup.sh


EXPOSE 8080
EXPOSE 3306