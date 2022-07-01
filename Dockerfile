# stage for building jar file
FROM openjdk:18-alpine3.14 as buildstage
WORKDIR /app
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src
RUN ./mvnw package
COPY target/*.jar app.jar

# stage for running spring boot application
FROM openjdk:18-alpine3.14
COPY --from=buildstage /app/app.jar .
ENTRYPOINT ["java", "-jar","app.jar"]
