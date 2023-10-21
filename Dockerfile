FROM maven:3.8-jdk-11

WORKDIR /app

COPY pom.xml /app
COPY src /app/src

RUN mvn package

CMD ["java", "-jar", "/app/target/DockerFirst-1.0-SNAPSHOT.jar"] 