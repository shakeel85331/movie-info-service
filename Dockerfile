FROM adoptopenjdk/openjdk11
EXPOSE 8080
COPY ./build/libs/movie-info-service-0.0.1-SNAPSHOT.jar /usr/app/app.jar
WORKDIR /usr/app
ENTRYPOINT ["java","-jar","app.jar"]