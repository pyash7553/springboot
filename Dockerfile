FROM openjdk:11
EXPOSE 8080
ADD target/springboot.jar springboot.jar
ENTRYPOINT ["java","-jar","/springboot.jar","SERVER_PORT=9000","-cp","app:app/lib/*","com.example.demo.DemoApplication"]
#"-Dserver.port=${PORT}",
