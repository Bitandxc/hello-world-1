FROM java:8-jdk-alpine
COPY /target/webapp.war /usr/app/webapp.war
WORKDIR /usr/app
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "webapp.war"]
