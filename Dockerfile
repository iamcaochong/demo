FROM openjdk:8-jdk-alpine
VOLUME /tmp
#定义两个变量，指定jar包的名称和项目名称；
ARG JAR_FILE_NAME=app.jar
ARG PROJECT_DIR=demo
ADD / ${PROJECT_DIR}/

RUN wget http://apache-mirror.rbc.ru/pub/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
RUN tar xzvf apache-maven-3.3.9-bin.tar.gz
RUN cp -R apache-maven-3.3.9 /usr/local/bin
RUN export PATH=apache-maven-3.3.9/bin:$PATH
RUN export PATH=/usr/local/bin/apache-maven-3.3.9/bin:$PATH
RUN ln -s /usr/local/bin/apache-maven-3.3.9/bin/mvn /usr/local/bin/mvn
#RUN ls -l /usr/local/bin
RUN echo $PATH
RUN cd ${PROJECT_DIR} && mvn package
RUN cd ${PROJECT_DIR} && rm -rf /src


ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","${PROJECT_DIR}/target/${JAR_FILE_NAME}"]