FROM openjdk:11
EXPOSE 8080
EXPOSE $PORT
ADD target/springboot.jar springboot.jar
CMD ["web","java","-jar","/springboot.jar","--httpPort=$PORT","-Dserver.port=$PORT","-cp","com.example.demo.SpringbootApplication"]
#"-Dserver.port=${PORT}",
