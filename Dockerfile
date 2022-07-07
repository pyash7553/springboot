FROM openjdk:11
EXPOSE 8080
ADD target/springboot.jar springboot.jar
CMD ["java","-jar","/springboot.jar","--httpPort=$PORT","-Dserver.port=$PORT","-cp","com.example.demo.SpringbootApplication"]
#"-Dserver.port=${PORT}",
