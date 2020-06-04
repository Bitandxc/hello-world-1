FROM java:8-jdk-alpine
COPY ./webapp.war /usr/app/
WORKDIR /usr/app
RUN curl -fsSLO https://get.docker/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "webapp.war"]
