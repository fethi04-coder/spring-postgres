# Build stage
FROM eclipse-temurin:17-jdk-jammy as build

WORKDIR /app
COPY App.java .
RUN javac App.java

# Run stage (lightweight)
FROM eclipse-temurin:17-jre-jammy

WORKDIR /app
COPY --from=build /app/App.class .

CMD ["java", "App"]
