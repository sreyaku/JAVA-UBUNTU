 FROM openjdk:8
 COPY target/spring-boot-hello-world-example-0.0.1-SNAPSHOT.jar .
 RUN dir
 EXPOSE 8082
 CMD ["java", "-jar","spring-boot-hello-world-example-0.0.1-SNAPSHOT.jar"]
 
