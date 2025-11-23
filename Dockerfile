FROM openjdk:17-jdk-slim

WORKDIR /app

# 使用 v3（最穩定版本）
ADD https://github.com/lavalink-devs/Lavalink/releases/download/3.7.10/Lavalink.jar Lavalink.jar
COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
