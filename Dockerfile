# git action
FROM openjdk:17-alpine

WORKDIR /app-backend

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} vuespring.jar

ENTRYPOINT ["java","-jar","vuespring.jar"]