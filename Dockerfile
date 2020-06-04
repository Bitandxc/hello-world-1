FROM java:8-jdk-alpine
COPY ./webapp.war /usr/app/
WORKDIR /usr/app
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "webapp.war"]
