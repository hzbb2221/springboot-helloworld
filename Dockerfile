FROM hzbb2221/jdk:8u401

MAINTAINER hzbb

ENV LANG C.UTF-8

ADD *.jar app.jar
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
  echo 'Asia/Shanghai' >/etc/timezone

ENTRYPOINT java -jar app.jar
