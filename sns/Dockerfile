# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim
EXPOSE 8086
# Set the working directory in the container
WORKDIR /app

# Copy the application JAR (assuming you have built a JAR file)
COPY target/sns-sample.jar sns-sample.jar

# Specify the command to run on container startup
CMD ["java", "-jar", "sns-sample.jar"]
