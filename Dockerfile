FROM openjdk:11
EXPOSE 8080
ADD target/springboot.jar springboot.jar
CMD ["web","java","-jar","/springboot.jar","--httpPort=9000","-Dserver.port=9000","-cp","com.example.demo.SpringbootApplication"]
#"-Dserver.port=${PORT}",
