FROM openjdk:17-jdk-slim

WORKDIR /app

# 下載 Lavalink JAR
ADD https://github.com/freyacodes/Lavalink/releases/download/3.10.11/Lavalink.jar /app/Lavalink.jar

# 複製設定檔
COPY application.yml /app/application.yml

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar", "--spring.config.location=application.yml"]