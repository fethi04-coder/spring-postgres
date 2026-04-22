# Use official OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy source code
COPY App.java .

# Compile the application
RUN javac App.java

# Run the application
CMD ["java", "App"]
