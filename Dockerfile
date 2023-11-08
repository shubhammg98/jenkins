FROM openjdk:11
WORKDIR /practice_jenkins
COPY ./target/*.jar /notes-app-1.0.0.jar
CMD ["java","jar","notes-app-1.0.0.jar"]