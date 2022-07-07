FROM openjdk:11
EXPOSE 8080
SET SERVER_PORT=7788
ADD target/springboot.jar springboot.jar
ENTRYPOINT ["java","-jar","/springboot.jar","-cp","app:app/lib/*","com.example.demo.DemoApplication"]
#"-Dserver.port=${PORT}",
