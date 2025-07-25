CATALINA_OPTS="$CATALINA_OPTS -Djava.library.path=${CATALINA_BASE}/webapps/Thingworx/WEB-INF/extensions -Duser.timezone=UTC \
--add-opens=java.base/java.lang.reflect=ALL-UNNAMED \
--add-opens=java.base/java.net=ALL-UNNAMED \
--add-opens=java.base/java.nio=ALL-UNNAMED \
--add-opens=java.base/java.util.concurrent.locks=ALL-UNNAMED \
--add-opens=java.base/java.util.stream=ALL-UNNAMED \
--add-opens=java.base/java.util.concurrent.atomic=ALL-UNNAMED \
--add-opens=java.xml/com.sun.org.apache.xerces.internal.dom=ALL-UNNAMED \
--add-opens=java.base/java.util.regex=ALL-UNNAMED \
-Dd64 -Djava.net.preferIPv4Stack=true \
-Djava.awt.headless=true -Dserver -XX:+UseNUMA \
-XX:+UseG1GC -Dfile.encoding=UTF-8 -Dlog4j2.formatMsgNoLookups=true \
-Xms1000M  \
-Xmx1200M"