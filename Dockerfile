FROM openjdk:11
# WORKDIR /practice_jenkins
# COPY ./target/*.jar /notes-app-1.0.0.jar
# EXPOSE 8080
# CMD ["java", "-jar", "notes-app-1.0.0.jar"]
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]