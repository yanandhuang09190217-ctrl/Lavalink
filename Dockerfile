FROM eclipse-temurin:17-jdk

WORKDIR /app

# 下載 Lavalink 5 最新版 jar
ADD https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar /app/Lavalink.jar

COPY application.yml /app/application.yml

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
