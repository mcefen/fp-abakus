FROM navikt/java:11-appdynamics
ENV APPD_ENABLED=true

RUN mkdir lib
RUN mkdir webapp
RUN mkdir conf

# Config
COPY web/target/classes/jetty/jaspi-conf.xml conf/

# Application Container (Jetty)
COPY web/target/app.jar .
COPY web/target/lib/*.jar ./

ENV JAVA_OPTS="-Xmx1024m -Xms128m \
    -Djava.security.egd=file:/dev/urandom \
    -Duser.timezone=Europe/Oslo \
    -Dlogback.configurationFile=conf/logback.xml"

# Export vault properties
COPY .scripts/03-import-appdynamics.sh /init-scripts/03-import-appdynamics.sh
COPY .scripts/05-import-users.sh /init-scripts/05-import-users.sh
