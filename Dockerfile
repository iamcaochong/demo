FROM maven:3.5.2-jdk-8-alpine
MAINTAINER caochong iamcaochong@foxmail.com
VOLUME /tmp
#定义两个变量，指定jar包的名称和项目名称；
ARG JAR_FILE_NAME=demo-0.0.1-SNAPSHOT.jar
ARG PROJECT_DIR=demo
ADD / ${PROJECT_DIR}/

RUN cd ${PROJECT_DIR} && ls && mvn package
RUN cp -f ${PROJECT_DIR}/target/${JAR_FILE_NAME} app.jar && rm -rf ${PROJECT_DIR}
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]
