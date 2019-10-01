FROM maven:alpine

EXPOSE 8888
COPY pom.xml /opt/spring-cloud-config-server/
WORKDIR /opt/spring-cloud-config-server/
RUN mvn package
RUN mkdir /config
VOLUME /config

WORKDIR /
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar",\
     "/opt/spring-cloud-config-server/target/spring-cloud-config-server.jar",\
     "--server.port=8888",\
     "--spring.config.name=application"]
