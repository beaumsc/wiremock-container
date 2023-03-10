FROM amazoncorretto:8-alpine-jre

WORKDIR /opt/wiremock

EXPOSE 8091/tcp

RUN apk add curl \
  && curl -o wiremock-standalone-2.27.2.jar https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/2.27.2/wiremock-standalone-2.27.2.jar

CMD java -jar wiremock-standalone-2.27.2.jar --port 8091 --verbose
