FROM openjdk:11
WORKDIR /practice_jenkins
COPY ./target/*.jar /notes-app-1.0.0.jar
EXPOSE 8080
CMD ["java", "-jar", "notes-app-1.0.0.jar"]