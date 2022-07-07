FROM openjdk:11
EXPOSE 8080
ADD target/springboot.jar springboot.jar
ENTRYPOINT ["java","-Dserver.port=${PORT}","-jar","/dev-int.jar","-cp","app:app/lib/*","com.example.demo.DemoApplication"]