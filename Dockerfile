FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY ./target/maven-app-*.jar /usr/app/
WORKDIR /usr/app

CMD java -jar maven-app-*.jar
