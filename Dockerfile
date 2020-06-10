From tomcat:9.0.35-jdk8
COPY .keystore /usr/local/tomcat/.keystore
COPY server.xml /usr/local/tomcat/conf/server.xml
RUN rm -rf /usr/local/tomcat/webapps/*
COPY /target/webapp1.jar /usr/local/tomcat/lib/app.jar
EXPOSE 8443
CMD ["catalina.sh","run"]
