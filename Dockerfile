# FROM openjdk:8-jdk-alpine
# VOLUME /tmp
# EXPOSE 8000
# ADD target/*.jar app.jar
# ENV JAVA_OPTS=""
# ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]

FROM openjdk:8-jdk-alpine
#COPY target/SpringMysqlDockerDemo-0.0.1-SNAPSHOT.jar .
ADD target/*.jar jenkins-docker.jar 
EXPOSE 8000
ENTRYPOINT ["java", "-jar", "jenkins-docker.jar"]