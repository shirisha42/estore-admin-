#use official jdk as the base image
FROM openjdk:11
#create directory app
RUN mkdir /app
#copy the contents of the target directory into the app
COPY target/ /app
#set working directory as app
WORKDIR /app
#Run the jar file
CMD java -jar petadoption-0.0.1-SNAPSHOT.jar --spring.config.name = application.properties