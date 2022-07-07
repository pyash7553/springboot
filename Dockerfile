FROM openjdk:11
EXPOSE 8080
ADD target/springboot.jar springboot.jar
CMD ["java","-jar","/springboot.jar","-Dserver.port=9000","-cp","com.example.demo.SpringbootApplication"]
#"-Dserver.port=${PORT}",
