FROM java:8-jdk-alpine
COPY /var/lib/jenkins/workspace/d001/webapp/target/webapp.war /usr/app/
WORKDIR /usr/app
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "webapp.war"]
