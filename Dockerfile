FROM openjdk:8-jdk-alpine
#FROM majiajue/jdk1.8
VOLUME /tmp
COPY target/springboot.jar springboot.jar
ENTRYPOINT ["web","java","-jar","/springboot.jar"]









#FROM adoptopenjdk/openjdk11:alpine-slim as build
#WORKDIR /workspace/app

#COPY mvnw .
#COPY .mvn .mvn
#COPY pom.xml .
#COPY src src

#RUN ./mvnw install -DskipTests
#RUN mkdir -p target/dependency && (cd target/dependency; jar -xf ../*.jar)

#FROM adoptopenjdk/openjdk11:alpine-slim
#VOLUME /tmp
#ARG DEPENDENCY=/workspace/app/target/dependency
#COPY --from=build ${DEPENDENCY}/BOOT-INF/lib /app/lib
#COPY --from=build ${DEPENDENCY}/META-INF /app/META-INF
#COPY --from=build ${DEPENDENCY}/BOOT-INF/classes /app
#ENTRYPOINT ["java","-Dserver.port=${PORT}","-cp","app:app/lib/*","com.example.demo.DemoApplication"]



#FROM openjdk:11
#EXPOSE 8080
#ADD target/springboot.jar springboot.jar
#CMD ["web","java","-jar","/springboot.jar","--httpPort=9000","-Dserver.port=9000","-cp","com.example.demo.SpringbootApplication"]
#"-Dserver.port=${PORT}",
