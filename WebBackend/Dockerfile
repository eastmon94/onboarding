# Start with a base image containing Java runtime
FROM openjdk:14-jdk-alpine

# Add Author info
LABEL maintainer="donghyun.kim@makinarocks.ai"

# Add a volume to /tmp
VOLUME /tmp

# Make port 8081 available to the world outside this container
EXPOSE 8081

# The application's jar file
ARG JAR_FILE=ARG JAR_FILE=target/demo-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} whoami-springboot.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/whoami-springboot.jar"]