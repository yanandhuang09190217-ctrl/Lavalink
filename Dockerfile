FROM eclipse-temurin:17-jdk

WORKDIR /app

# 自動下載 Lavalink v3 (最新版 v3.7.8)
RUN curl -L -o Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/download/3.7.8/Lavalink.jar

# 複製你的 application.yml
COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
