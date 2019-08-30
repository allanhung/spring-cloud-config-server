# Helm Charts for Spring Cloud Config Server
## Build and push to repository
```
docker build -t allanhung/spring-cloud-config-server:2.1.3 .
docker login 
docker push allanhung/spring-cloud-config-server:2.1.3
```

## deploy into kubernetes
```
helm install charts/spring-cloud-config-server --name spring-cloud-config-server -n <namespace>
```

###  Configuring Spring Cloud Config Server
Spring Cloud Config Server is a normal Spring Boot application, it can be configured through all the ways a Spring Boot application can be configured.  You may use environment variables or you can mount configuration in the provided volume.  The configuration file must be named **application** and may be a properties or yaml file. See the [Spring Boot documentation](http://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/#boot-features-external-config) for further information on how to use and configure Spring Boot.
