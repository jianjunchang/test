FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD target/gs-spring-boot-docker-0.1.0.jar app.jar
RUN ls 
RUN ls /tmp
RUN ls /target
ENV JAVA_OPTS=""
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]

