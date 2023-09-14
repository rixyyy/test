FROM openjdk:11.0-jre-buster
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone
COPY ./rep/demo/docker-demo.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]