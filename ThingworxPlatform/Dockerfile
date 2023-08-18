# FROM amd64/tomcat:9-jdk11-corretto
FROM tomcat:9-jdk11-corretto

RUN mkdir /ThingworxStorage /ThingworxBackupStorage /ThingworxPlatform
COPY config/Thingworx.war /usr/local/tomcat/webapps
COPY config/setenv.sh /usr/local/tomcat/bin
COPY config/mssql-jdbc-7.4.1.jre11.jar /usr/local/tomcat/lib
COPY config/platform-settings.json /ThingworxPlatform

EXPOSE 8080
CMD ["catalina.sh", "run"]