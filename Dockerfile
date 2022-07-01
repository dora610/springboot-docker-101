FROM openjdk:18-alpine3.14
VOLUME [ "/tmp" ]
COPY target/*.jar app.jar
COPY start-app.sh .
# ENTRYPOINT [ "java","-jar","/app.jar"]
ENTRYPOINT ["./start-app.sh"]
