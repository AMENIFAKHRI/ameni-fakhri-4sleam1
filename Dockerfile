# Étape 1 : Build du .jar avec Maven
FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Étape 2 : Image finale légère
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=builder /app/target/student-management-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]