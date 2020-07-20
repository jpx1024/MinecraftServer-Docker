FROM ubuntu:latest
# Replace apt source
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get update && apt-get -y install openjdk-8-jdk-headless
ADD eula.txt eula.txt
ADD minecraft_server.1.16.1.jar minecraft_server.1.16.1.jar
ADD forge-1.16.1-32.0.69-installer.jar forge-1.16.1-32.0.69-installer.jar
ENTRYPOINT ["java","-Xmx1024M", "-Xms1024M", "-jar", "/minecraft_server.1.16.1.jar", "nogui"]
RUN ["java", "-jar", "/forge-1.16.1-32.0.69-installer.jar", "nogui", "--installServer"]
EXPOSE 25565