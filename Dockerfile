FROM adoptopenjdk/openjdk11
ADD target/movie-info-service-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
