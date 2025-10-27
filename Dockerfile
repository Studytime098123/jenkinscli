FROM openjdk:17-jdk-slim
WORKDIR /app

COPY jenkins-cli.jar .
ENV JENKINS_URL=http://192.168.29.240:8080/
ENV JENKINS_USER=raj
ENV JENKINS_TOKEN=1187f436bcd3e8822794167a92beb285da



# Default command (shows CLI help)
ENTRYPOINT ["sh", "-c", "java -jar jenkins-cli.jar -s $JENKINS_URL -auth $JENKINS_USER:$JENKINS_TOKEN build helloworld -f"]

