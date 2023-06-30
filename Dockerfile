FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR_FILE=target/devops-integration.jar

WORKDIR /opt/app

#cp target/devops-integration.jar /opt/app/app.jar

COPY ${JAR_FILE} app.jar

# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]
