FROM openjdk:8-jre-alpine
COPY ./target/app.jar /usr/src/hola/
WORKDIR /usr/src/hola
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]