# Step 1: Use Java 21 as the base image
FROM eclipse-temurin:21-jdk

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the Spring Boot JAR into the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Step 4: Tell Docker that the application listens on port 8080
EXPOSE 8080

# Step 5: Start the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]