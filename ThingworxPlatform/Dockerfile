FROM tomcat:9-jdk21-corretto

RUN mkdir /ThingworxStorage /ThingworxBackupStorage /ThingworxPlatform
COPY config/Thingworx.war /usr/local/tomcat/webapps
COPY config/setenv.sh /usr/local/tomcat/bin
COPY config/mssql-jdbc-12.6.4.jre11.jar /usr/local/tomcat/lib
COPY config/platform-settings.json /ThingworxPlatform

EXPOSE 8080
CMD ["catalina.sh", "run"]