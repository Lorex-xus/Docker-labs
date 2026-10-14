FROM eclipse-temurin:25-jdk

WORKDIR /server

EXPOSE 25565

RUN apt-get update && apt-get install -y wget

RUN wget https://piston-data.mojang.com/v1/objects/823e2250d24b3ddac457a60c92a6a941943fcd6a/server.jar -O Server.jar

WORKDIR /data

CMD ["java", "-Xmx4G", "-Xms4G", "-jar", "/server/Server.jar", "nogui"]

