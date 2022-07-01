FROM openjdk:18-alpine3.14
WORKDIR /app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN ./mvnw package

COPY target/*.jar app.jar
ENTRYPOINT ["java", "-jar","app.jar"]
