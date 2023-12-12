# 基础镜像
FROM openjdk:8
# 作者
MAINTAINER wjh
# 挂载目录(容器启动时)
VOLUME /usr/local/water
# 指定路径
WORKDIR /usr/local/water
# 把当前路径的target目录下的jar包拷贝到镜像中，并重命名为demo.jar
COPY ./target/demo-0.0.1.jar /usr/local/water/demo.jar
ENTRYPOINT ["java","-jar","/usr/local/water/demo.jar"]
