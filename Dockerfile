## Build stage
FROM maven:3.9.4-eclipse-temurin-21 as build
WORKDIR /app
COPY app/demo/pom.xml .
COPY app/demo/src ./src
RUN mvn clean install

## Run stage
FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
