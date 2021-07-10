FROM gradle:jdk8 AS build

ADD ./movie-info-service /home/gradle/movie-info-service
WORKDIR /home/gradle/movie-info-service
RUN gradle bootJar

FROM adoptopenjdk/openjdk11 as deploy
RUN mkdir /opt/spring-boot ; \
    useradd spring
COPY --from=build  /home/gradle/movie-info-service/build/libs/movie-info-service-0.0.1-SNAPSHOT.jar /opt/spring-boot/app.jar
RUN chown -R spring:spring /opt/spring-boot
WORKDIR /opt/spring-boot
USER spring
CMD ["java","-jar","/opt/spring-boot/app.jar"]
