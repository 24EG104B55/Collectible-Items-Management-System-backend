# Stage 1: Build the Spring Boot application
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app

# Copy settings.xml with mirror to avoid 429 Too Many Requests
COPY settings.xml .
COPY pom.xml .
COPY src ./src

# Build the jar using custom mirror settings
RUN mvn clean package -DskipTests -s settings.xml -B

# Stage 2: Run the Spring Boot application
FROM eclipse-temurin:21-jre-jammy
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
