FROM java:8-jdk-alpine
WORKDIR /
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "webapp.war"]
