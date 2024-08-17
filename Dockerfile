# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the host machine to the container
COPY target/config-server-0.0.1-SNAPSHOT.jar /app/config-server.jar

# Expose the port the application will run on
EXPOSE 8888

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/config-server.jar"]
