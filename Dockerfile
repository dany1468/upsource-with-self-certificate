FROM jetbrains/upsource:2019.1.1644

USER root

ARG CERT_FILE
ARG CERT_ALIAS

RUN mkdir /tmp/cert
COPY ./cert/$CERT_FILE /tmp/cert

RUN /opt/upsource/internal/java/linux-x64/jre/bin/keytool -import -noprompt \
  -storepass changeit -file /tmp/cert/$CERT_FILE \
  -alias $CERT_ALIAS \ 
  -keystore /opt/upsource/internal/java/linux-x64/jre/lib/security/cacerts

USER jetbrains
