FROM openjdk:8u131-jdk-alpine

MAINTAINER lungtooh

ADD target/spring-boot-docker-example.jar /app/spring-boot-docker-example.jar

ENV JAVA_OPTS ""

ENTRYPOINT [ "/bin/sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app/spring-boot-docker-example.jar" ]